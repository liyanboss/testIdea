@echo OFF
echo ---------- start to build and upload to [AWS_APP] server ----------

set ROOT=%~dp0
call %ROOT%deploy.ini.bat DEMO
echo ---------- read config file in local server done ----------

set Git_Home=%Git_Location%
set WinSCP_Home=%WinSCP_Location%
set SourceCodePath=%SourceCode_Path%
set PrivatekeyPath=%Privatekey_Path%
set BaseScriptPath=%ROOT%BASE_build_upload_scripts/

set HttpServerAuth=%HttpServerAuthInfo%
set BackOfficeAuth=%BackOfficeAuthInfo%
set LobbyServer1Auth=%LobbyServer1AuthInfo%
set GameServer1Auth=%GameServer1AuthInfo%
set AiRobot_NIUNIU_Auth=%AiRobot_NIUNIU_AuthInfo%
set AiRobot_DMQQ_Auth=%AiRobot_DMQQ_AuthInfo%
set AiRobot_TXHD_Auth=%AiRobot_TXHD_AuthInfo%
set AiRobot_TLMN_Auth=%AiRobot_TLMN_AuthInfo%
set AiRobot_PKDN_Auth=%AiRobot_PKDN_AuthInfo%
set AiRobot_BCMN_Auth=%AiRobot_BCMN_AuthInfo%
set AiRobot_GGTH_Auth=%AiRobot_GGTH_AuthInfo%
set AiRobot_RMIN_Auth=%AiRobot_RMIN_AuthInfo%
set AiRobot_DDZB_Auth=%AiRobot_DDZB_AuthInfo%
set AiRobot_BIG2_Auth=%AiRobot_BIG2_AuthInfo%
set AiRobot_FISH_Auth=%AiRobot_FISH_AuthInfo%
set DataConsolidateAuth=%DataConsolidateAuthInfo%

echo ---------- pull the sourcecode from github ----------
if "%github_pull%" == "true" (
	call %Git_Home% --git-dir=%SourceCodePath%/.git --work-tree=%SourceCodePath% pull
	echo ---------- pull %SourceCodePath% done ----------
)

echo ---------- start to build package for upload in local server ----------
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
set HttpServerAuthOpen="%HttpServerAuth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_HttpServer%" == "true" (
	rmdir /Q /S "%SourceCodePath%/HttpServer/target/HttpServer/WEB-INF/lib"
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_HttpServer.txt /parameter %HttpServerAuthOpen% %SourceCodePath%
	echo ---------- upload HttpServer done ----------
)
set BackOfficeAuthOpen="%BackOfficeAuth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_BackOffice%" == "true" (
	rmdir /Q /S "%SourceCodePath%/BackOffice/target/ROOT/WEB-INF/lib"
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_BackOffice.txt /parameter %BackOfficeAuthOpen% %SourceCodePath%
	echo ---------- upload BackOffice done ----------
)
set LobbyServer1AuthOpen="%LobbyServer1Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_LobbyServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_LobbyServer.txt /parameter %LobbyServer1AuthOpen% %SourceCodePath%
	echo ---------- upload LobbyServer1 done ----------
)
set GameServer1AuthOpen="%GameServer1Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_GameServer%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_GameServer.txt /parameter %GameServer1AuthOpen% %SourceCodePath%
	echo ---------- upload GameServer1 done ----------
)

set AiRobot_NIUNIU_AuthOpen="%AiRobot_NIUNIU_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_NIUNIU_AuthOpen% %SourceCodePath% _niuniu
	echo ---------- upload AiRobot_NIUNIU done ----------
)
set AiRobot_DMQQ_AuthOpen="%AiRobot_DMQQ_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_DMQQ_AuthOpen% %SourceCodePath% _dmqq
	echo ---------- upload AiRobot_DMQQ done ----------
)
set AiRobot_TXHD_AuthOpen="%AiRobot_TXHD_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_TXHD_AuthOpen% %SourceCodePath% _txhd
	echo ---------- upload AiRobot_TXHD done ----------
)
set AiRobot_TLMN_AuthOpen="%AiRobot_TLMN_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_TLMN_AuthOpen% %SourceCodePath% _tlmn
	echo ---------- upload AiRobot_TLMN done ----------
)
set AiRobot_PKDN_AuthOpen="%AiRobot_PKDN_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_PKDN_AuthOpen% %SourceCodePath% _pkdn
	echo ---------- upload AiRobot_PKDN done ----------
)
set AiRobot_BCMN_AuthOpen="%AiRobot_BCMN_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_BCMN_AuthOpen% %SourceCodePath% _bcmn
	echo ---------- upload AiRobot_BCMN done ----------
)
set AiRobot_GGTH_AuthOpen="%AiRobot_GGTH_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_GGTH_AuthOpen% %SourceCodePath% _ggth
	echo ---------- upload AiRobot_GGTH done ----------
)
set AiRobot_RMIN_AuthOpen="%AiRobot_RMIN_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_RMIN_AuthOpen% %SourceCodePath% _rmin
	echo ---------- upload AiRobot_RMIN done ----------
)
set AiRobot_DDZB_AuthOpen="%AiRobot_DDZB_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_DDZB_AuthOpen% %SourceCodePath% _ddzb
	echo ---------- upload AiRobot_DDZB done ----------
)
set AiRobot_BIG2_AuthOpen="%AiRobot_BIG2_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	echo call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_DDZB_AuthOpen% %SourceCodePath% _big2
	echo ---------- upload AiRobot_BIG2 done ----------
)

set AiRobot_FISH_AuthOpen="%AiRobot_FISH_Auth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_AiRobot%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_AiRobot.txt /parameter %AiRobot_FISH_AuthOpen% %SourceCodePath% _fish
	echo ---------- upload AiRobot_FISH done ----------
)

set DataConsolidateAuthOpen="%DataConsolidateAuth% -privatekey=""%PrivatekeyPath%"" -hostkey=""ssh-ed25519 255 2c:6f:e2:d0:a9:89:88:db:96:e5:3d:01:0e:b4:51:12"""
if "%upload_DataConsolidate%" == "true" (
	call %WinSCP_Home% /console /script=%BaseScriptPath%BASE_upload_DataConsolidate.txt /parameter %DataConsolidateAuthOpen% %SourceCodePath%
	echo ---------- upload DataConsolidate done ----------
)

echo ---------- build and upload finish [AWS_APP], awesome! ----------
PAUSE
