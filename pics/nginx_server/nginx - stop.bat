set ROOT=%~dp0
call %ROOT%nginx_init.bat
call %Nginx_Home%\nginx.exe -c %ROOT%nginx.conf -s stop
pause