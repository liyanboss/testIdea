@echo OFF
echo ---------- start to build and upload to [NEW_DEMO_AWS] Server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat NEW_DEMO_AWS
echo ---------- read config file in local server done ----------

set Git_Home=%Git_Location%
set SCP_Home=%OpenSSH_SCP_Location%
set SourceCodePath=%SourceCode_Path%
set SCP_Identity_File=%OpenSSH_SCP_Identity_File%
set BaseScriptPath=%ROOT%BASE_build_upload_scripts/
set NewDemoAwsAuth=%NEW_DEMO_AWS_AuthInfo%

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
rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
echo rmdir /Q /S "%SourceCodePath%/NewBackOffice/target/ROOT/WEB-INF/lib"
set /p uploadTo_NEW_DEMO_AWS='upload to NEW_DEMO_AWS_Server, yes(y) or no(n)?'
if "%uploadTo_NEW_DEMO_AWS%" == "y" (
	echo ---------- start uploading all package ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/httpserver/upload/
	call %SCP_Home% -i %SCP_Identity_File% -r %SourceCodePath%\HttpServer\target\HttpServer %NewDemoAwsAuth%:/pkmj/httpserver/upload/
	echo ---------- finish upload HttpServer 11111 ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/backoffice/upload/
	call %SCP_Home% -i %SCP_Identity_File% -r %SourceCodePath%\Backoffice\target\ROOT %NewDemoAwsAuth%:/pkmj/backoffice/upload/
	echo ---------- finish upload Backoffice 22222 ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/lobbyserver/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\ServerCore\target\ServerCore-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/lobbyserver/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\LobbyServer\target\LobbyServer-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/lobbyserver/upload/
	echo ---------- finish upload LobbyServer 33333 ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/gameserver/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\ServerCore\target\ServerCore-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/gameserver/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\GameServer\target\GameServer-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/gameserver/upload/
	echo ---------- finish upload GameServer 444444 ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/airobot_fish/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\AiRobot\target\AiRobot-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/airobot_fish/upload/
	echo ---------- finish upload airobot_fish 55555 ----------
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\CommonBase\target\CommonBase-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/dataconsolidate/upload/
	call %SCP_Home% -i %SCP_Identity_File% %SourceCodePath%\DataConsolidate\target\DataConsolidate-1.0-SNAPSHOT.jar %NewDemoAwsAuth%:/pkmj/dataconsolidate/upload/
	echo ---------- finish upload DataConsolidate 66666 ----------
)

echo ---------- build and upload to [NEW_DEMO_AWS] Server done, awesome! ----------
PAUSE
