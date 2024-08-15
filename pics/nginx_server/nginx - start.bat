set ROOT=%~dp0
call %ROOT%nginx_init.bat
call %Nginx_Home%\nginx.exe -v
call %Nginx_Home%\nginx.exe -t -c %ROOT%nginx.conf

TaskList|Findstr /i "nginx.exe">Nul
If ErrorLevel 1 (
	start /b %Nginx_Home%\nginx.exe -c %ROOT%nginx.conf
	echo "...The New Nginx Process Started..."
) Else (
	echo "...The Nginx Process Still Running..."
)

pause