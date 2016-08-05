@echo off
setlocal delayexpansion
 
cls
 
title %username%`s watch
:time   
 
@echo off
@mode con cols=30 lines=7
color A
 
set "n01=***** "
set "n02=*   * "
set "n03=*   * "
set "n04=*   * "
set "n05=***** "
 
set "n11=  **  "
set "n12=  **  "
set "n13=  **  "
set "n14=  **  "
set "n15=  **  "
 
set "n21=***** "
set "n22=    * "
set "n23=***** "
set "n24=*     "
set "n25=***** "
 
set "n31=***** "
set "n32=    * "
set "n33=***** "
set "n34=    * "
set "n35=***** "
 
set "n41=*   * "
set "n42=*   * "
set "n43=***** "
set "n44=    * "
set "n45=    * "
 
set "n51=***** "
set "n52=*     "
set "n53=***** "
set "n54=    * "
set "n55=***** "
 
set "n61=***** "
set "n62=*     "
set "n63=***** "
set "n64=*   * "
set "n65=***** "
 
set "n71=***** "
set "n72=    * "
set "n73=   *  "
set "n74=  *   "
set "n75=  *   "
 
set "n81=***** "
set "n82=*   * "
set "n83=***** "
set "n84=*   * "
set "n85=***** "
 
set "n91=***** "
set "n92=*   * "
set "n93=***** "
set "n94=    * "
set "n95=***** "
 
set "col1=  "
set "col2=* "
set "col3=  "
set "col4=* "
set "col5=  "
 
set out1=""
set out2=""
set out3=""
set out4=""
set out5=""
 
set /a m1=%TIME:~3,1%
set /a m=%TIME:~4,1%
set /a h1=%TIME:~0,1%
set /a h=%TIME:~1,1%
 
 
IF "%h1%" == "1" (
                set "out1=%n11%"
                set "out2=%n12%"
                set "out3=%n13%"
                set "out4=%n14%"
                set "out5=%n15%"
) ELSE (
                set "out1=%n01%"
                set "out2=%n02%"
                set "out3=%n03%"
                set "out4=%n04%"
                set "out5=%n05%"
)
 
if "%h%"  ==  "1" (
                set "out1=%out1%%n11%"
                set "out2=%out2%%n12%"
                set "out3=%out3%%n13%"
                set "out4=%out4%%n14%"
                set "out5=%out5%%n15%"
) 
if "%h%"  ==  "2" (
                set "out1=%out1%%n21%"
                set "out2=%out2%%n22%"
                set "out3=%out3%%n23%"
                set "out4=%out4%%n24%"
                set "out5=%out5%%n25%"
)
  if "%h%"  ==  "3" (
                set "out1=%out1%%n31%"
                set "out2=%out2%%n32%"
                set "out3=%out3%%n33%"
                set "out4=%out4%%n34%"
                set "out5=%out5%%n35%"
)
  if "%h%"  ==  "4" (
                set "out1=%out1%%n41%"
                set "out2=%out2%%n42%"
                set "out3=%out3%%n43%"
                set "out4=%out4%%n44%"
                set "out5=%out5%%n45%"
)
  if "%h%"  ==  "5" (
                set "out1=%out1%%n51%"
                set "out2=%out2%%n52%"
                set "out3=%out3%%n53%"
                set "out4=%out4%%n54%"
                set "out5=%out5%%n55%"
) 
if "%h%"  ==  "6" (
                set "out1=%out1%%n61%"
                set "out2=%out2%%n62%"
                set "out3=%out3%%n63%"
                set "out4=%out4%%n64%"
                set "out5=%out5%%n65%"
)
  if "%h%"  ==  "7" (
                set "out1=%out1%%n71%"
                set "out2=%out2%%n72%"
                set "out3=%out3%%n73%"
                set "out4=%out4%%n74%"
                set "out5=%out5%%n75%"
) 
if "%h%"  ==  "8" (
                set "out1=%out1%%n81%"
                set "out2=%out2%%n82%"
                set "out3=%out3%%n83%"
                set "out4=%out4%%n84%"
                set "out5=%out5%%n85%"
)
  if "%h%"  ==  "9" (
                set "out1=%out1%%n91%"
                set "out2=%out2%%n92%"
                set "out3=%out3%%n93%"
                set "out4=%out4%%n94%"
                set "out5=%out5%%n95%"
)
if "%h%"  ==  "0" (
                set "out1=%out1%%n01%"
                set "out2=%out2%%n02%"
                set "out3=%out3%%n03%"
                set "out4=%out4%%n04%"
                set "out5=%out5%%n05%"
)
 
                set "out1=%out1%%col1%"
                set "out2=%out2%%col2%"
                set "out3=%out3%%col3%"
                set "out4=%out4%%col4%"
                set "out5=%out5%%col5%"
 
if "%m1%"  ==  "1" (
                set "out1=%out1%%n11%"
                set "out2=%out2%%n12%"
                set "out3=%out3%%n13%"
                set "out4=%out4%%n14%"
                set "out5=%out5%%n15%"
)
  if "%m1%"  ==  "2" (
                set "out1=%out1%%n21%"
                set "out2=%out2%%n22%"
                set "out3=%out3%%n23%"
                set "out4=%out4%%n24%"
                set "out5=%out5%%n25%"
) 
if "%m1%"  ==  "3" (
                set "out1=%out1%%n31%"
                set "out2=%out2%%n32%"
                set "out3=%out3%%n33%"
                set "out4=%out4%%n34%"
                set "out5=%out5%%n35%"
) 
if "%m1%"  ==  "4" (
                set "out1=%out1%%n41%"
                set "out2=%out2%%n42%"
                set "out3=%out3%%n43%"
                set "out4=%out4%%n44%"
                set "out5=%out5%%n45%"
) 
if "%m1%"  ==  "5" (
                set "out1=%out1%%n51%"
                set "out2=%out2%%n52%"
                set "out3=%out3%%n53%"
                set "out4=%out4%%n54%"
                set "out5=%out5%%n55%"
) 
if "%m1%"  ==  "6" (
                set "out1=%out1%%n61%"
                set "out2=%out2%%n62%"
                set "out3=%out3%%n63%"
                set "out4=%out4%%n64%"
                set "out5=%out5%%n65%"
) 
if "%m1%"  ==  "7" (
                set "out1=%out1%%n71%"
                set "out2=%out2%%n72%"
                set "out3=%out3%%n73%"
                set "out4=%out4%%n74%"
                set "out5=%out5%%n75%"
)
  if "%m1%"  ==  "8" (
                set "out1=%out1%%n81%"
                set "out2=%out2%%n82%"
                set "out3=%out3%%n83%"
                set "out4=%out4%%n84%"
                set "out5=%out5%%n85%"
) 
if "%m1%"  ==  "9" (
                set "out1=%out1%%n91%"
                set "out2=%out2%%n92%"
                set "out3=%out3%%n93%"
                set "out4=%out4%%n94%"
                set "out5=%out5%%n95%"
)
if  "%m1%"  ==  "0" (
                set "out1=%out1%%n01%"
                set "out2=%out2%%n02%"
                set "out3=%out3%%n03%"
                set "out4=%out4%%n04%"
                set "out5=%out5%%n05%"
)
 
if "%m%"  ==  "1" (
                set "out1=%out1%%n11%"
                set "out2=%out2%%n12%"
                set "out3=%out3%%n13%"
                set "out4=%out4%%n14%"
                set "out5=%out5%%n15%"
) 
if "%m%"  ==  "2" (
                set "out1=%out1%%n21%"
                set "out2=%out2%%n22%"
                set "out3=%out3%%n23%"
                set "out4=%out4%%n24%"
                set "out5=%out5%%n25%"
)
  if "%m%"  ==  "3" (
                set "out1=%out1%%n31%"
                set "out2=%out2%%n32%"
                set "out3=%out3%%n33%"
                set "out4=%out4%%n34%"
                set "out5=%out5%%n35%"
) 
if "%m%"  ==  "4" (
                set "out1=%out1%%n41%"
                set "out2=%out2%%n42%"
                set "out3=%out3%%n43%"
                set "out4=%out4%%n44%"
                set "out5=%out5%%n45%"
)
  if "%m%"  ==  "5" (
                set "out1=%out1%%n51%"
                set "out2=%out2%%n52%"
                set "out3=%out3%%n53%"
                set "out4=%out4%%n54%"
                set "out5=%out5%%n55%"
)
  if "%m%"  ==  "6" (
                set "out1=%out1%%n61%"
                set "out2=%out2%%n62%"
                set "out3=%out3%%n63%"
                set "out4=%out4%%n64%"
                set "out5=%out5%%n65%"
)
  if "%m%"  ==  "7" (
                set "out1=%out1%%n71%"
                set "out2=%out2%%n72%"
                set "out3=%out3%%n73%"
                set "out4=%out4%%n74%"
                set "out5=%out5%%n75%"
) 
if "%m%"  ==  "8" (
                set "out1=%out1%%n81%"
                set "out2=%out2%%n82%"
                set "out3=%out3%%n83%"
                set "out4=%out4%%n84%"
                set "out5=%out5%%n85%"
)
  if "%m%"  ==  "9" (
                set "out1=%out1%%n91%"
                set "out2=%out2%%n92%"
                set "out3=%out3%%n93%"
                set "out4=%out4%%n94%"
                set "out5=%out5%%n95%"
)
if  "%m%"  ==  "0" (
                set "out1=%out1%%n01%"
                set "out2=%out2%%n02%"
                set "out3=%out3%%n03%"
                set "out4=%out4%%n04%"
                set "out5=%out5%%n05%"
)
echo.
echo. %out1%
echo. %out2%
echo. %out3%
echo. %out4%
echo. %out5%
timeout 5 > null
cls
goto :time
