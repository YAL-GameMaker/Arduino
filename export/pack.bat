@echo off

if not exist "Arduino-for-GMS1" mkdir "Arduino-for-GMS1"
cmd /C copyre ..\Arduino.gmx\extensions\Arduino.extension.gmx Arduino-for-GMS1\Arduino.extension.gmx
cmd /C copyre ..\Arduino.gmx\extensions\Arduino Arduino-for-GMS1\Arduino
cmd /C copyre ..\Arduino.gmx\datafiles\Arduino.html Arduino-for-GMS1\Arduino\Assets\datafiles\Arduino.html
cd Arduino-for-GMS1
cmd /C 7z a Arduino-for-GMS1.7z *
move /Y Arduino-for-GMS1.7z ../Arduino-for-GMS1.gmez
cd ..

if not exist "Arduino-for-GMS2\extensions" mkdir "Arduino-for-GMS2\extensions"
if not exist "Arduino-for-GMS2\datafiles" mkdir "Arduino-for-GMS2\datafiles"
if not exist "Arduino-for-GMS2\datafiles_yy" mkdir "Arduino-for-GMS2\datafiles_yy"
cmd /C copyre ..\Arduino_yy\extensions\Arduino Arduino-for-GMS2\extensions\Arduino
cmd /C copyre ..\Arduino_yy\datafiles\Arduino.html Arduino-for-GMS2\datafiles\Arduino.html
cmd /C copyre ..\Arduino_yy\datafiles_yy\Arduino.html.yy Arduino-for-GMS2\datafiles_yy\Arduino.html.yy
cd Arduino-for-GMS2
cmd /C 7z a Arduino-for-GMS2.zip *
move /Y Arduino-for-GMS2.zip ../Arduino-for-GMS2.yymp
cd ..

if not exist "Arduino-for-GMS2.3+\extensions" mkdir "Arduino-for-GMS2.3+\extensions"
if not exist "Arduino-for-GMS2.3+\datafiles" mkdir "Arduino-for-GMS2.3+\datafiles"
cmd /C copyre ..\Arduino_23\extensions\Arduino Arduino-for-GMS2.3+\extensions\Arduino
cmd /C copyre ..\Arduino_23\datafiles\Arduino.html Arduino-for-GMS2.3+\datafiles\Arduino.html
cd Arduino-for-GMS2.3+
cmd /C 7z a Arduino-for-GMS2.3+.zip *
move /Y Arduino-for-GMS2.3+.zip ../Arduino-for-GMS2.3+.yymps
cd ..

pause