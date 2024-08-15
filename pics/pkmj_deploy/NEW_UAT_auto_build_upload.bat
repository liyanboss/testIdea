@echo OFF
echo ---------- start to build and upload to [NEW_UAT] server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat NEW_UAT
echo ---------- read config file in local server done ----------

set Git_Home=%Git_Location%
set WinSCP_Home=%WinSCP_Location%
set SourceCodePath=%SourceCode_Path%
set PrivatekeyPath=%Privatekey_Path%
set BaseScriptPath=%ROOT%BASE_build_upload_scripts/

set UAT29Auth=%UAT29AuthInfo%
set UAT30Auth=%UAT30AuthInfo%

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
	call %BaseScriptPath%BASE_build_CommonBase.bat %SourceCodePath% uat_test_env
	echo ---------- build CommonBase done ----------
)
if "%build_HttpServer%" == "true" (
	call %BaseScriptPath%BASE_build_HttpServer.bat %SourceCodePath% uat_test_env
	echo ---------- build HttpServer done ----------
)
if "%build_BackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_BackOffice.bat %SourceCodePath% uat_test_env
	echo ---------- build BackOffice done ----------
)
if "%build_NewBackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_NewBackOffice.bat %SourceCodePath% uat_test_env
	echo ---------- build NewBackOffice done ----------
)
if "%build_AiRobot%" == "true" (
	call %BaseScriptPath%BASE_build_AiRobot.bat %SourceCodePath% uat_test_env
	echo ---------- build AiRobot done ----------
)
if "%build_DataConsolidate%" == "true" (
	call %BaseScriptPath%BASE_build_DataConsolidate.bat %SourceCodePath% uat_test_env
	echo ---------- build DataConsolidate done ----------
)

set build_LobbyOrGameServer=false
if "%build_LobbyServer%" == "true" set build_LobbyOrGameServer=true
if "%build_GameServer%" == "true" set build_LobbyOrGameServer=true
if "%build_LobbyOrGameServer%" == "true" (
	call %BaseScriptPath%BASE_build_ServerCore.bat %SourceCodePath% uat_test_env
	echo ---------- build ServerCore done ----------
)
if "%build_LobbyServer%" == "true" (
	call %BaseScriptPath%BASE_build_LobbyServer.bat %SourceCodePath% uat_test_env
	echo ---------- build LobbyServer done ----------
)
if "%build_GameServer%" == "true" (
	call %BaseScriptPath%BASE_build_GameServer.bat %SourceCodePath% uat_test_env
	echo ---------- build GameServer done ----------
)


echo ---------- start to upload package to remote server ----------

set UAT29AuthOpen="%UAT29Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
echo rmdir /Q /S "%SourceCodePath%/NewBackOffice/target/ROOT/WEB-INF/lib"
set /p uploadToUAT_29='upload to UAT_29, yes(y) or no(n)?'
if "%uploadToUAT_29%" == "y" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_UAT_29.txt /parameter %UAT29AuthOpen% %SourceCodePath%
	echo ---------- upload UAT_29 done ----------
)

set UAT30AuthOpen="%UAT30Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
set /p uploadToUAT_30='upload to UAT_30, yes(y) or no(n)?'
if "%uploadToUAT_30%" == "y" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_UAT_30.txt /parameter %UAT30AuthOpen% %SourceCodePath%
	echo ---------- upload UAT_30 done ----------
)

echo ---------- build and upload to [NEW_UAT] server done, awesome! ----------
PAUSE
