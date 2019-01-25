# Logger_In_Swift
Tags : Logging Data, Saving it your Device/Simulator, Reviewing Logs, Analysing Logged Data.


### Not meant to be put in the released built. Only for internal testing of the app.

# How to use it: 
1. Add this file to your project.
2. Use it like this : `Logger.writeToFile(text: "-> startUpdatingLocation() called.”, to: kLogsFile)`



## While running on Simulators the print line will be printing the path where the folder and file is created. You can easily retrieve it from there.

## To get Logger file from Devices follow the below procedure : Make sure the devices is connected via Cable to Xcode
1. Open Xcode -> In Menu bar Tap on Window
2. Click on *Devices and Simulators* 
3. Select you iPhone aka Device
4. Select the Application from Installed Apps (In Which you have added the Logger.swift)
5. Click on the Settings button below the Installed apps Section.
6. Click on *Download Container...*

 _Xcode will Download the Data and open a New Finder Window with your container_
 
 7. Right click on it and click *Show Package Contents*
 8. Then Goto *AppData->Documents->MyData->MyLogFile.txt*.
 9. Done.
 
 Below are the screenshots for your convenience.
  
1. <a href="https://ibb.co/8cb9NNS"><img src="https://i.ibb.co/L5r1YY2/11.png" alt="11" border="0"></a>
2. <a href="https://ibb.co/G0T6ykf"><img src="https://i.ibb.co/7X4fPVx/22.png" alt="22" border="0"></a>
3. <a href="https://ibb.co/dQgN4Zj"><img src="https://i.ibb.co/BgNh2kc/33.png" alt="33" border="0"></a>
4. <a href="https://ibb.co/4JRt0P9"><img src="https://i.ibb.co/cxh3sDM/44.png" alt="44" border="0"></a>
 
