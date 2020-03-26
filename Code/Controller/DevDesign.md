# Scenarios
I'm going to try to create the design around the scenarios that I want the whole installation to support.  
I'm going to use the same scenarios to create the design for the light firmware and design. I think this should help me keep things consistent
through long periods when I don't work on this (*which always happens*).

## 1. Adding a new light to the system
The controller receives a REST request that puts it in the add light mode. The mode ends when one light was added.
The request must indicate the ID of the light being added or replaced. In this case the ID is essentially an indicator for the physical location of the light being added.
The controller does not care where the lights are physically located, the user specifying the program does. So the IDs are specified by the caller.
The controller does not ensure the IDs are uinique. It is the responsibility of the caller.

## 2. Send each light the program it needs to follow
The controller receives a REST request specifying the program each light needs to execute.
The controller then sends the relevant parts of the program to each light, and only returns when it finished sending the program to each light.  
There are three kinds of programs:  
1. How should a light behave when turning on (aka. on transition).  
2. How should a light behave when on (aka. normal).  
3. How should a light behave when turing off (aka. off transition).  

Programs *1* and *3* are optional. When they're not specified the ligts will turn on or off instantaneously.
## 3.Coordinates the program for all lights
The controller uses I2C protocol to broadcast a message to ALL lights. The message is broadcasted at a regular interval (*defined by the program*)
## 3. Report status from each light
The controller must be able to check the status of each light.

# Implementation details
## Controller REST APIs
These APIs are the way to send comands to the controller. From a phone app, or from the home automation hub.  

I need the following APIs to cover the desired functionality:
- **SetProgram**. This is a ***POST*** used for sending a program of lights.  
  This command will distribute the program to each light (according to the input data), and only return when it is done doing that.  
  Running this command will pause everything else the controller is doing until it completes.  
  For each light, an array of color, brightness and duration  is sent.  
  The settings for multiple lights can be combined (when they're the same). The settings are executed in the order they were received, by each light.  
  The program must have the following properties specified:  
  - **type** (byte). Possible values:
	- ***1*** - The program is to be run by the specified lights, while they're on.
	- ***2*** - The program is to be run when the lights turn on (before switching to the prgram specified with type ***1***).  
	  Transition from Off to On.
	- ***3*** - The program is to be run whe the lights turn off (befre actually switching the power off, after running  
	  the program specified with type ***1***). Transition from On to Off.
  - **beat** (ushort). This is the number of milliseconds in a single beat of the program, aka. how often would the controller send the signal to all the lights to advance to the next step of the program.  
	  The beat will be maintained by the controller, who is sending a broadcast signal to all lights to keep the program in sync.
  - **lightCommands** (array of complex type: *lightCommand*). This is the actual set of commands in sequence to be executed by the lights.  
  Each *lightCommand* instance has the following properties:
    - **lights** (ushort[]). This is the list of light locations for which the command data applies.
    - **r** (byte). This is the red color value in "RGB" (participates in determining the color of the light).
    - **g** (byte). This is the green color value in "RGB" (participates in determining the color of the light).
    - **b** (byte). This is the blue color value in "RGB" (participates in determining the color of the light).
    - **intensity** (byte). The intensity of the light when turned on (how bright is it: ***0** - light is off, **255** - light is on at full power*).
    - **beats** (ushort). This indicates how many beats will the specified settings last.  
    Basically the light will keep the settings in the command for this many *'beats'* from controller, after which it will move to the next command.
- **Switch**. This is a ***GET*** used to turn on or off the lights (according to the program that was uploaded last).  
  This command is returning immediately after setting up the program. It does not wait for the transition program (if any is defined) to end.  
  This is a GET request with a single parameter (**status**), that indicates the desired action:
	- ***1*** - Turn the lights on.  
	 This means the controller turns the power **on** to the lights, then start sending the beat for *on animation* (if one was set),  
	 then switches to te beat for *normal light on* program and returns success to the caller.
	- ***2*** - Turn the lights off.  
	This means the controller switches starts sending the beat for *off animation* (if one was set),
	then it switches the power off for the lights and returns success to the caller.
- **CheckStatus**. This is a ***GET*** used to get the status information from each light.
  This command will query each light for status and return an aggregated view of status for all lights.  
  Running this command will pause everything else the controller is doing until it completes.
- **Setup**. This is a ***GET*** used to put the controller in a mode where a new light can be connected outside.  
  This command puts the controller in a special mode where it starts listening for a new light to be added, and gives them a unique Id.  
  Running the command will cancel any other activity the controller is doing, and switch the controller to be a slave I2C device with address 0x1.  
  When an unconfigured light is powered on, it is behaving like an I2C master device, and it looks to talk to the slave at address 0x1 (always).  
  Once the controller responds with the information needed the light switches back to normal (slave) mode I2C device with the ID provided by the
  controller in the previous step.
  Once the master provided all the information it has for the light being connected it switches back to its normal functionality.
  This is a GET with a single parameter (**lightLocation**) which indicates which light is being added.  
  The light location value is a number, wich specifies the physical location of the light on the driveway.
  The consumer must define a map with where the lights are (which solely depends on his/her configuration of lights placement).  
  For example, a consumer with 10 lights placed evenly on the sides of the driveway, could define the locations like this:
  ```
     +-----+    1          2          3          4          5 
     |     |    ===============================================
	 |House|                    Drive way
	 |     |    ===============================================
	 +-----+    10         9          8          7          6
  ```
  This allows the user the ability to specify programs that light up various lights at different times to obtain interesting effects.
  Again, for simplicity of setup the numbers that identify the location of the light do not necesarely have to map to the I2C id of the respective light.
  The controller keeps a map and converts the location to the correct I2C id.
  All the programs address the lights by their location, not by the I2C id.