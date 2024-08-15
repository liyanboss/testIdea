@echo OFF
echo ---------- start to build and upload to [NEW_DEMO] AWS_Server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat NEW_DEMO
echo ---------- read config file in local server done ----------

set Git_Home=%Git_Location%
set WinSCP_Home=%WinSCP_Location%
set SourceCodePath=%SourceCode_Path%
set PrivatekeyPath=%Privatekey_Path%
set BaseScriptPath=%ROOT%BASE_build_upload_scripts/

set DemoAwsAuth=%DEMO_AWS_AuthInfo%


echo ---------- pull the sourcecode from github ----------
if "%github_pull%" == "true" (
	call %Git_Home% --git-dir=%SourceCodePath%/.git --work-tree=%SourceCodePath% pull
	echo ---------- pull %SourceCodePath% done ----------
)

echo ---------- start to build package on local server ----------
set build_CommonBase=false
if "%build_HttpServer%" == "true" set build_CommonBase=true
if "%build_BackOffice%" == "true" set build_CommonBase=true
if "%build_NewBackOffice%" == "true" set build_CommonBase=true
if "%build_LobbyServer%" == "true" set build_CommonBase=true
if "%build_GameServer%" == "true" set build_CommonBase=true
if "%build_AiRobot%" == "true" set build_CommonBase=true
if "%build_DataConsolidate%" == "true" set build_CommonBase=true
if "%build_CommonBase%" == "true" (
	call %BaseScriptPath%BASE_build_CommonBase.bat %SourceCodePath% demo_aws_env
	echo ---------- build CommonBase done ----------
)
if "%build_HttpServer%" == "true" (
	call %BaseScriptPath%BASE_build_HttpServer.bat %SourceCodePath% demo_aws_env
	echo ---------- build HttpServer done ----------
)
if "%build_BackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_BackOffice.bat %SourceCodePath% demo_aws_env
	echo ---------- build BackOffice done ----------
)
if "%build_NewBackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_NewBackOffice.bat %SourceCodePath% demo_aws_env
	echo ---------- build NewBackOffice done ----------
)
if "%build_AiRobot%" == "true" (
	call %BaseScriptPath%BASE_build_AiRobot.bat %SourceCodePath% demo_aws_env
	echo ---------- build AiRobot done ----------
)
if "%build_DataConsolidate%" == "true" (
	call %BaseScriptPath%BASE_build_DataConsolidate.bat %SourceCodePath% demo_aws_env
	echo ---------- build DataConsolidate done ----------
)

set build_LobbyOrGameServer=false
if "%build_LobbyServer%" == "true" set build_LobbyOrGameServer=true
if "%build_GameServer%" == "true" set build_LobbyOrGameServer=true
if "%build_LobbyOrGameServer%" == "true" (
	call %BaseScriptPath%BASE_build_ServerCore.bat %SourceCodePath% demo_aws_env
	echo ---------- build ServerCore done ----------
)
if "%build_LobbyServer%" == "true" (
	call %BaseScriptPath%BASE_build_LobbyServer.bat %SourceCodePath% demo_aws_env
	echo ---------- build LobbyServer done ----------
)
if "%build_GameServer%" == "true" (
	call %BaseScriptPath%BASE_build_GameServer.bat %SourceCodePath% demo_aws_env
	echo ---------- build GameServer done ----------
)


echo ---------- start to upload package to remote server ----------

set DemoAwsAuthOpen="%DemoAwsAuth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
echo rmdir /Q /S "%SourceCodePath%/NewBackOffice/target/ROOT/WEB-INF/lib"
set /p uploadTo_DEMO_AWS='upload to DEMO_AWS_Server, yes(y) or no(n)?'
if "%uploadTo_DEMO_AWS%" == "y" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_DEMO_AWS.txt /parameter %DemoAwsAuthOpen% %SourceCodePath%
	echo ---------- upload DEMO_AWS done ----------
)

echo ---------- build and upload to [NEW_DEMO] AWS_Server done, awesome! ----------
PAUSE
