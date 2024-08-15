@ECHO OFF
SET ROOT=%~dp0

SET CONFIG_FILE=%ROOT%deploy.ini
FOR /F "tokens=1,2 delims==" %%i in (%CONFIG_FILE%) DO (
 SET %%i=%%j
)

SET CONFIG_FILE_AUTH=%ROOT%%1_auth.config
FOR /F "tokens=1,2 delims==" %%i in (%CONFIG_FILE_AUTH%) DO (
 SET %%i=%%j
)