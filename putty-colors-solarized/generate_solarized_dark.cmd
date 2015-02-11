@ECHO OFF
set OUTPUT=solarized_dark.reg

(
echo Windows Registry Editor Version 5.00
echo.
) > %OUTPUT%

FOR /F "tokens=*" %%G IN ('reg.exe QUERY HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\Sessions\') DO (
echo [%%G]
echo "Colour0"="131,148,150"
echo "Colour1"="147,161,161"
echo "Colour2"="0,43,54"
echo "Colour3"="7,54,66"
echo "Colour4"="0,43,54"
echo "Colour5"="238,232,213"
echo "Colour6"="7,54,66"
echo "Colour7"="0,43,56"
echo "Colour8"="220,50,47"
echo "Colour9"="203,75,22"
echo "Colour10"="133,153,0"
echo "Colour11"="88,110,117"
echo "Colour12"="181,137,0"
echo "Colour13"="101,123,131"
echo "Colour14"="38,139,210"
echo "Colour15"="131,148,150"
echo "Colour16"="211,54,130"
echo "Colour17"="108,113,196"
echo "Colour18"="42,161,152"
echo "Colour19"="147,161,161"
echo "Colour20"="238,232,213"
echo "Colour21"="253,246,227"
echo. 
)>> %OUTPUT%