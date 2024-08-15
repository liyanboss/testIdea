@echo OFF
echo ---------- start Sync [CASH] to [DRS] machine ----------

set ROOT=%~dp0
call %ROOT%sync_apps_to_drs.ini.bat SYNC_CASH_TO_DRS
echo ---------- read config file done ----------

set WinSCP_Home=%WinSCP_Location%
set PrivatekeyPath=%Privatekey_Path%
set BaseFolderPath=%ROOT%Temp_SYNC_CASH_TO_DRS
set BaseScriptPath=%ROOT%BASE_download_upload_scripts

set CASH_HttpServerAuth=%CASH_HttpServerAuthInfo%
set CASH_LobbyServer1Auth=%CASH_LobbyServer1AuthInfo%
set CASH_GameServer1Auth=%CASH_GameServer1AuthInfo%
set CASH_BackOfficeAuth=%CASH_BackOfficeAuthInfo%
set CASH_AiRobot1Auth=%CASH_AiRobot1AuthInfo%
set CASH_DataConsolidateAuth=%CASH_DataConsolidateAuthInfo%

set DRS_HttpServerAuth=%DRS_HttpServerAuthInfo%
set DRS_LobbyServer1Auth=%DRS_LobbyServer1AuthInfo%
set DRS_GameServer1Auth=%DRS_GameServer1AuthInfo%
set DRS_BackOfficeAuth=%DRS_BackOfficeAuthInfo%
set DRS_AiRobot1Auth=%DRS_AiRobot1AuthInfo%
set DRS_DataConsolidateAuth=%DRS_DataConsolidateAuthInfo%

echo ---------- begin Pull files ----------
set CASH_HttpServerAuthOpen="%CASH_HttpServerAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_HttpServer%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_HttpServer/pkmj"
	mkdir "%BaseFolderPath%/CASH_HttpServer/pkmj/httpserver/scripts"
	mkdir "%BaseFolderPath%/CASH_HttpServer/pkmj/tools/apache-tomcat-9.0.34_HttpServer/bin"
	mkdir "%BaseFolderPath%/CASH_HttpServer/pkmj/tools/apache-tomcat-9.0.34_HttpServer/conf"
	mkdir "%BaseFolderPath%/CASH_HttpServer/pkmj/nginxserver"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_HttpServer.txt /parameter %CASH_HttpServerAuthOpen% %BaseFolderPath%
	echo ---------- pull_HttpServer done ----------
)

set CASH_LobbyServer1AuthOpen="%CASH_LobbyServer1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_LobbyServer%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_LobbyServer/pkmj"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/lobbyserver/scripts"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/tools"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/activemq_61616/scripts"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/tools/apache-activemq-5.15.3_61616/bin"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/tools/apache-activemq-5.15.3_61616/conf"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/activemq_61626/scripts"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/tools/apache-activemq-5.15.3_61626/bin"
	mkdir "%BaseFolderPath%/CASH_LobbyServer/pkmj/tools/apache-activemq-5.15.3_61626/conf"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_LobbyServer.txt /parameter %CASH_LobbyServer1AuthOpen% %BaseFolderPath%
	echo ---------- pull_LobbyServer 1 done ----------
)

set CASH_GameServer1AuthOpen="%CASH_GameServer1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_GameServer%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_GameServer/pkmj"
	mkdir "%BaseFolderPath%/CASH_GameServer/pkmj/gameserver/scripts"
	mkdir "%BaseFolderPath%/CASH_GameServer/pkmj/tools"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_GameServer.txt /parameter %CASH_GameServer1AuthOpen% %BaseFolderPath%
	echo ---------- pull_GameServer 1 done ----------
)
set CASH_BackOfficeAuthOpen="%CASH_BackOfficeAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_BackOffice%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_BackOffice/pkmj"
	mkdir "%BaseFolderPath%/CASH_BackOffice/pkmj/backoffice/scripts"
	mkdir "%BaseFolderPath%/CASH_BackOffice/pkmj/tools/apache-tomcat-9.0.34_BackOffice/bin"
	mkdir "%BaseFolderPath%/CASH_BackOffice/pkmj/tools/apache-tomcat-9.0.34_BackOffice/conf"
	mkdir "%BaseFolderPath%/CASH_BackOffice/etc/nginx/conf.d"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_BackOffice.txt /parameter %CASH_BackOfficeAuthOpen% %BaseFolderPath%
	echo ---------- pull_BackOffice done ----------
)
set CASH_AiRobot1AuthOpen="%CASH_AiRobot1Auth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_AiRobot%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_AiRobot/pkmj"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_bcmn/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_big2/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_ddzb/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_dmqq/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_fish/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_ggth/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_niuniu/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_pkdn/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_rmin/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_tlmn/scripts"
	mkdir "%BaseFolderPath%/CASH_AiRobot/pkmj/airobot_txhd/scripts"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_AiRobot.txt /parameter %CASH_AiRobot1AuthOpen% %BaseFolderPath%
	echo ---------- pull_AiRobot 1 done ----------
)
set CASH_DataConsolidateAuthOpen="%CASH_DataConsolidateAuth% -hostkey=""ssh-rsa 2048 c4:2e:f6:79:46:f5:05:da:e3:4f:1b:ef:6d:22:fc:f2"""
if "%pull_DataConsolidate%" == "true" (
	rmdir /Q /S "%BaseFolderPath%/CASH_DataConsolidate/pkmj"
	mkdir "%BaseFolderPath%/CASH_DataConsolidate/pkmj/dataconsolidate/scripts"
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_download_to_Local_DataConsolidate.txt /parameter %CASH_DataConsolidateAuthOpen% %BaseFolderPath%
	echo ---------- pull_DataConsolidate done ----------
)
echo ---------- end Pull files ----------


echo ---------- begin Push files ----------
set DRS_HttpServerAuthOpen="%DRS_HttpServerAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_HttpServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_HttpServer.txt /parameter %DRS_HttpServerAuthOpen% %BaseFolderPath%
	echo '### tar zxvf apache-tomcat-9.0.34.tar.gz ###'
	echo '### ln -sv /pkmj/tools/apache-tomcat-9.0.34_HttpServer /pkmj/apache-tomcat-HttpServer ###'
	echo ---------- push_HttpServer done ----------
)
set DRS_LobbyServer1AuthOpen="%DRS_LobbyServer1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_LobbyServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_LobbyServer.txt /parameter %DRS_LobbyServer1AuthOpen% %BaseFolderPath%
	echo '### tar zxvf apache-activemq-5.15.3-bin.tar.gz ###'
	echo '### ln -sv /pkmj/tools/apache-activemq-5.15.3_61616 /pkmj/activemq_61616/apache-activemq ###'
	echo '### ln -sv /pkmj/tools/apache-activemq-5.15.3_61626 /pkmj/activemq_61626/apache-activemq ###'
	echo ---------- push_LobbyServer 1 done ----------
)
set DRS_GameServer1AuthOpen="%DRS_GameServer1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_GameServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_GameServer.txt /parameter %DRS_GameServer1AuthOpen% %BaseFolderPath%
	echo ---------- push_GameServer 1 done ----------
)
set DRS_BackOfficeAuthOpen="%DRS_BackOfficeAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_BackOffice%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_BackOffice.txt /parameter %DRS_BackOfficeAuthOpen% %BaseFolderPath%
	echo '### tar zxvf apache-tomcat-9.0.34.tar.gz ###'
	echo '### ln -sv /pkmj/tools/apache-tomcat-9.0.34_BackOffice /pkmj/apache-tomcat-BackOffice ###'
	echo '### /etc/nginx/nginx.conf ###'
	echo '### /etc/nginx/conf.d/default.conf ###'
	echo ---------- push_BackOffice done ----------
)
set DRS_AiRobot1AuthOpen="%DRS_AiRobot1Auth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_AiRobot%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_AiRobot.txt /parameter %DRS_AiRobot1AuthOpen% %BaseFolderPath%
	echo ---------- push_AiRobot 1 done ----------
)
set DRS_DataConsolidateAuthOpen="%DRS_DataConsolidateAuth% -hostkey=""ssh-ed25519 255 1b:d1:67:53:49:a2:63:45:2b:6a:1d:43:fa:47:04:ff"""
if "%push_DataConsolidate%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%/BASE_CASH_upload_to_DRS_DataConsolidate.txt /parameter %DRS_DataConsolidateAuthOpen% %BaseFolderPath%
	echo ---------- push_DataConsolidate done ----------
)
echo ---------- end Push files ----------


echo ---------- finish Sync [CASH] to [DRS] machine, awesome! ----------
PAUSE

