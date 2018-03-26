@echo off 
echo. 
echo.                          
echo.	 
echo 	 Estadisticas en conexiones de Red Windows

echo -------------------------------------------------------------------------------------------------------------------
echo.
echo Fecha y hora actual %DATE% - %TIME% 
echo Nombre del PC %COMPUTERNAME% 
echo Nombre del usuario %USERNAME% 
echo Numero de procesadores %NUMBER_OF_PROCESSORS% 
wmic cpu get name
echo -------------------------------------------------------------------------------------------------------------------
echo    Informacion ip maquina:
echo.
ipconfig | findstr IPv4
echo -------------------------------------------------------------------------------------------------------------------
timeout /t 30
echo -------------------------------------------------------------------------------------------------------------------
:top
cls
echo Fecha y hora actual %DATE% - %TIME% 
echo.
netstat -sp IP
echo -------------------------------------------------------------------------------------------------------------------
echo Numero de conexiones TCP establecidas :   
netstat -nao | find /i "estab" /c 
echo Numero de Conexiones TCP Espera :  
netstat -nao | find /i "time" /c
echo -------------------------------------------------------------------------------------------------------------------
echo    Conexiones : 
netstat -nao | find /i "estab"
echo.
echo    En Espera :
netstat -nao | find /i "TIME_WAIT" 
echo -------------------------------------------------------------------------------------------------------------------
echo Numero de conexiones TCP establecidas :   
netstat -nao | find /i "estab" /c 
echo Numero de Conexiones TCP Espera :  
netstat -nao | find /i "time" /c
echo -------------------------------------------------------------------------------------------------------------------
timeout /t 60
goto top

pause