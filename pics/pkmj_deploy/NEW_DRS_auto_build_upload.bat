@echo OFF
echo ---------- start to build and upload to [NEW_DRS] server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat NEW_DRS
echo ---------- read config file in local server done ----------

set Git_Home=%Git_Location%
set WinSCP_Home=%WinSCP_Location%
set SourceCodePath=%SourceCode_Path%
set PrivatekeyPath=%Privatekey_Path%
set BaseScriptPath=%ROOT%BASE_build_upload_scripts/

set HttpServerAuth=%HttpServerAuthInfo%
set BackOfficeAuth=%BackOfficeAuthInfo%
set NewBackOfficeAuth=%NewBackOfficeAuthInfo%
set LobbyServer1Auth=%LobbyServer1AuthInfo%
set GameServer1Auth=%GameServer1AuthInfo%
set AiRobot1Auth=%AiRobot1AuthInfo%
set DataConsolidateAuth=%DataConsolidateAuthInfo%

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
	call %BaseScriptPath%BASE_build_CommonBase.bat %SourceCodePath% cash_production
	echo ---------- build CommonBase done ----------
)
if "%build_HttpServer%" == "true" (
	call %BaseScriptPath%BASE_build_HttpServer.bat %SourceCodePath% cash_production
	echo ---------- build HttpServer done ----------
)
if "%build_BackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_BackOffice.bat %SourceCodePath% cash_production
	echo ---------- build BackOffice done ----------
)
if "%build_NewBackOffice%" == "true" (
	call %BaseScriptPath%BASE_build_NewBackOffice.bat %SourceCodePath% cash_production
	echo ---------- build NewBackOffice done ----------
)
if "%build_AiRobot%" == "true" (
	call %BaseScriptPath%BASE_build_AiRobot.bat %SourceCodePath% cash_production
	echo ---------- build AiRobot done ----------
)
if "%build_DataConsolidate%" == "true" (
	call %BaseScriptPath%BASE_build_DataConsolidate.bat %SourceCodePath% cash_production
	echo ---------- build DataConsolidate done ----------
)

set build_LobbyOrGameServer=false
if "%build_LobbyServer%" == "true" set build_LobbyOrGameServer=true
if "%build_GameServer%" == "true" set build_LobbyOrGameServer=true
if "%build_LobbyOrGameServer%" == "true" (
	call %BaseScriptPath%BASE_build_ServerCore.bat %SourceCodePath% cash_production
	echo ---------- build ServerCore done ----------
)
if "%build_LobbyServer%" == "true" (
	call %BaseScriptPath%BASE_build_LobbyServer.bat %SourceCodePath% cash_production
	echo ---------- build LobbyServer done ----------
)
if "%build_GameServer%" == "true" (
	call %BaseScriptPath%BASE_build_GameServer.bat %SourceCodePath% cash_production
	echo ---------- build GameServer done ----------
)

echo ---------- start to upload package to remote server ----------
set HttpServerAuthOpen="%HttpServerAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_HttpServer%" == "true" (
	rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_HttpServer.txt /parameter %HttpServerAuthOpen% %SourceCodePath%
	echo ---------- upload HttpServer done ----------
)
set BackOfficeAuthOpen="%BackOfficeAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_BackOffice%" == "true" (
	rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_BackOffice.txt /parameter %BackOfficeAuthOpen% %SourceCodePath%
	echo ---------- upload BackOffice done ----------
)
set NewBackOfficeAuthOpen="%NewBackOfficeAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_NewBackOffice%" == "true" (
	rmdir /Q /S "%SourceCodePath%/NewBackOffice/target/ROOT/WEB-INF/lib"
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_NewBackOffice.txt /parameter %NewBackOfficeAuthOpen% %SourceCodePath%
	echo ---------- upload NewBackOffice done ----------
)
set LobbyServer1AuthOpen="%LobbyServer1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_LobbyServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_LobbyServer.txt /parameter %LobbyServer1AuthOpen% %SourceCodePath%
	echo ---------- upload LobbyServer1 done ----------
)
set GameServer1AuthOpen="%GameServer1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_GameServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_GameServer.txt /parameter %GameServer1AuthOpen% %SourceCodePath%
	echo ---------- upload GameServer1 done ----------
)
set AiRobot1AuthOpen="%AiRobot1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_AiRobot%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot_all.txt /parameter %AiRobot1AuthOpen% %SourceCodePath%
	echo ---------- upload AiRobot ALL done ----------
)
set DataConsolidateAuthOpen="%DataConsolidateAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%upload_DataConsolidate%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_DataConsolidate.txt /parameter %DataConsolidateAuthOpen% %SourceCodePath%
	echo ---------- upload DataConsolidate done ----------
)

echo ---------- build and upload to [NEW_DRS] server done, awesome! ----------
PAUSE
