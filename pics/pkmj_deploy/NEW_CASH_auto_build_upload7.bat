@echo OFF
echo ---------- start to build and upload to [NEW_CASH] server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat NEW_CASH
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
set GameServer2Auth=%GameServer2AuthInfo%
set GameServer3Auth=%GameServer3AuthInfo%

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
set HttpServerAuthOpen="%HttpServerAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_HttpServer%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_HttpServer_to_77_82="do task of upload_HttpServer_to_77_82, yes(y) or no(n)?"
	if "!upload_HttpServer_to_77_82!" == "y" (
		rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_HttpServer.txt /parameter %HttpServerAuthOpen% %SourceCodePath%
		echo ---------- upload HttpServer done ----------
	) else (
		echo your selection is ----"!upload_HttpServer_to_77_82!"----
	)
)
set BackOfficeAuthOpen="%BackOfficeAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_BackOffice%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_BackOffice_to_77_86="do task of upload_BackOffice_to_77_86, yes(y) or no(n)?"
	if "!upload_BackOffice_to_77_86!" == "y" (
		rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_BackOffice.txt /parameter %BackOfficeAuthOpen% %SourceCodePath%
		echo ---------- upload BackOffice done ----------
	) else (
		echo your selection is ----"!upload_BackOffice_to_77_86!"----
	)
)
set NewBackOfficeAuthOpen="%NewBackOfficeAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_NewBackOffice%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_NewBackOffice_to_77_86="do task of upload_NewBackOffice_to_77_86, yes(y) or no(n)?"
	if "!upload_NewBackOffice_to_77_86!" == "y" (
		rmdir /Q /S "%SourceCodePath%/NewBackOffice/target/ROOT/WEB-INF/lib"
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_NewBackOffice.txt /parameter %NewBackOfficeAuthOpen% %SourceCodePath%
		echo ---------- upload NewBackOffice done ----------
	) else (
		echo your selection is ----"!upload_NewBackOffice_to_77_86!"----
	)
)
set LobbyServer1AuthOpen="%LobbyServer1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_LobbyServer%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_LobbyServer_to_77_84="do task of upload_LobbyServer_to_77_84, yes(y) or no(n)?"
	if "!upload_LobbyServer_to_77_84!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_LobbyServer.txt /parameter %LobbyServer1AuthOpen% %SourceCodePath%
		echo ---------- upload LobbyServer1 done ----------
	) else (
		echo your selection is ----"!upload_LobbyServer_to_77_84!"----
	)
)
set GameServer1AuthOpen="%GameServer1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_GameServer%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_GameServer_to_77_83="do task of upload_GameServer_to_77_83, yes(y) or no(n)?"
	if "!upload_GameServer_to_77_83!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_GameServer.txt /parameter %GameServer1AuthOpen% %SourceCodePath%
		echo ---------- upload GameServer1 done ----------
	) else (
		echo your selection is ----"!upload_GameServer_to_77_83!"----
	)
)
set AiRobot1AuthOpen="%AiRobot1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_AiRobot%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_AiRobot_to_77_85="do task of upload_AiRobot_to_77_85, yes(y) or no(n)?"
	if "!upload_AiRobot_to_77_85!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot_all.txt /parameter %AiRobot1AuthOpen% %SourceCodePath%
		echo ---------- upload AiRobot ALL done ----------
	) else (
		echo your selection is ----"!upload_AiRobot_to_77_85!"----
	)
)
set DataConsolidateAuthOpen="%DataConsolidateAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%upload_DataConsolidate%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_DataConsolidate_to_77_85="do task of upload_DataConsolidate_to_77_85, yes(y) or no(n)?"
	if "!upload_DataConsolidate_to_77_85!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_DataConsolidate.txt /parameter %DataConsolidateAuthOpen% %SourceCodePath%
		echo ---------- upload DataConsolidate done ----------
	) else (
		echo your selection is ----"!upload_DataConsolidate_to_77_85!"----
	)
)
set GameServer2AuthOpen="%GameServer2Auth% -hostkey=""ssh-rsa 2048 plFadq1VpNrclimvP4S8xx3vnRCxB16mu2cZFrgzM9c="""
if "%upload_GameServer%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_GameServer_to_77_87="do task of upload_GameServer_to_77_87, yes(y) or no(n)?"
	if "!upload_GameServer_to_77_87!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_GameServer.txt /parameter %GameServer2AuthOpen% %SourceCodePath%
		echo ---------- upload GameServer2 done ----------
	) else (
		echo your selection is ----"!upload_GameServer_to_77_87!"----
	)
)
set GameServer3AuthOpen="%GameServer3Auth% -hostkey=""ssh-rsa 2048 plFadq1VpNrclimvP4S8xx3vnRCxB16mu2cZFrgzM9c="""
if "%upload_GameServer%" == "true" (
	setlocal EnableDelayedExpansion
	set /p upload_GameServer_to_77_88="do task of upload_GameServer_to_77_88, yes(y) or no(n)?"
	if "!upload_GameServer_to_77_88!" == "y" (
		call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_GameServer.txt /parameter %GameServer3AuthOpen% %SourceCodePath%
		echo ---------- upload GameServer3 done ----------
	) else (
		echo your selection is ----"!upload_GameServer_to_77_88!"----
	)
)

echo ---------- build and upload to [NEW_CASH] server done, awesome! ----------
PAUSE
