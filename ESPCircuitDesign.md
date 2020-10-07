# **Controller circuit design**
Once the [power part](PowerSourceDesign.md) of the controller board was clarified, I am free to move to designing the rest of the controller.  
The controller itself is going to be simple (if not trivial) since all the magic is actually done by software.  

## Designing the brains of the operation
Not much of criteria for selecting the ESP chip **:-)**... I just wanted the cheapest ESP32 version that is dual core.  
I think the firmware will not need a lot of memory, so I don't need (I think) additional flash.  
So the one that I ended up choosing [**ESP32-WROOM-32E**](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32e_esp32-wroom-32ue_datasheet_en.pdf) model (2.5$ at [Mouser.com](https://www.mouser.com/ProductDetail/espressif/esp32-wroom-32em113eh3200ph3q0/?qs=vHuUswq2%252bsx8Xcp7bzmaHA%3D%3D&countrycode=US&currencycode=USD)).  
  
Next is to figure out which level shifter to use.  
For this one I just have the price and pitch criterias, so all I did was to search [mouser.com](https://www.mouser.com/Search/Refine?Ntk=P_MarCom&Ntt=188668142&Ns=Pricing|0) for level shifters and then slect the cheapest one that has at least 0.65mm pitch.  