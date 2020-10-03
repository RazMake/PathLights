# Project History
I wanted to add some path lights to my driveway for a long time, so when the opportunity presented to get some help digging the trenches, I decided to jump in.  
I admit I did not thorrowly think this through, as I don't know much about electronics.
I am a software developer, but I don't know C++ very well (yet).
So naturaly decided to go all in and try to build them myself from scratch, right? That is what you do when you have no ideea how to build soemthing. After all, paraphrasing my favorite manager of all time: How hard can it ***posibly*** be?  
Lukly I have a friend who knows a lot more about electronics than I do and he was willing to help out so I'll give it a shot.

# High level plan
Like I said, I ended up burying the cables before I had a fully formed plan. The initial ideea was that I would use a two wire protocol to comunicate between the controller and the lights. So I buried 4 wire cable:  
* 2 wires - power and ground
* 2 wires - for a I2C bus all the lights and the controller are connected to  

But that plan changed when I learned that ESP32 chips (at least some version) is now $2.5 and it is a [dual core](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32e_esp32-wroom-32ue_datasheet_en.pdf) chip with 520KB of program memory and 4MB of flash storage, a ton of GPIOs. That is when I thought I can use these ESP chips and have the lights even smarter.
So the current plan is to use one ESP32 in each light to control an RGB led. Each light will receive instructions from a central ESP32 controller which is connected to my Wi-Fi network.  
I am going to use the ESP-IDF toolchain for programming the ESPs, and they have a *'mesh'* functionality, which, if it works as advertised, would allow me to switch the communication to radio, instead of I2C protocol over wire. This is interesting because it is a bit higher level and it is easier to expand in the future.  
Another big wing would be that each of the microcontrollers can be flashed over the air. So if I find bugs or if I need to add functionality.  
ESP32s also have bluetooth functionality which could be used to add interesting functionality like recognize who is entering the driveway (but that is not in the plan for now).  
I will power the lights with 12V so the LEDs have the needed voltage, and I will use a buck converter to drop that to the 3.3V required by the ESP chip.

# Hardware
Unlike other circuits I made, which were very simple and I could simply start putting the components together, for the light PCB I had to adjust a little bit and apply some of the principles I learned while developing software:  
- decompose big problmes in smaller ones untill you get to problems that can be solved
- be as rigurous as possible and make sure the smaller problems are solved correctly before assembling the solutions in the final board.  

I am trying to increase the chances the board works as much as possible from the beginning, but also plan for the event of it not working anyway: the individual components that make up the logical modules should be placed as much as possible together to make debugging easier.  
For the same purpose, consider leaving out pads for measuring voltages and currents if something does not work right.  
So here is how I worked trough building the schematic for a single light (these would be my logical modules):
1) Design the [power source](PowerSourceDesign.md)
2) Design the [ESP circuit and the connection to the LED](ESPCircuitDesign.md)  

The plan is to work on the design/schematic of each logical module separately and then [assemble everything](FinalBoardDesign.md) into the light controller PCB.

