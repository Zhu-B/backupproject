@ECHO OFF

SET "SCRIPT_DIR=%~dp0"

IF NOT DEFINED OPENCV_QUIET ( ECHO Setting vars for OpenCV 4.6.0 )
SET "PATH=%SCRIPT_DIR%\../../bin/Debug;%PATH%"

IF NOT DEFINED OPENCV_SKIP_PYTHON CALL :SET_PYTHON

SET SCRIPT_DIR=

IF NOT [%1] == [] GOTO :RUN_COMMAND

GOTO :EOF

:RUN_COMMAND
SET RUN_INTERACTIVE=1
echo %CMDCMDLINE% | find /i "%~0" >nul
IF NOT errorlevel 1 set RUN_INTERACTIVE=0

%*
SET RESULT=%ERRORLEVEL%
IF %RESULT% NEQ 0 (
  IF _%RUN_INTERACTIVE%_==_0_ ( IF NOT DEFINED OPENCV_BATCH_MODE ( pause ) )
)
EXIT /B %RESULT%

:SET_PYTHON
SET "PYTHONPATH_OPENCV=%SCRIPT_DIR%\python_loader"
IF NOT DEFINED OPENCV_QUIET ( ECHO Append PYTHONPATH: %PYTHONPATH_OPENCV% )
SET "PYTHONPATH=%PYTHONPATH_OPENCV%;%PYTHONPATH%"
SET PYTHONPATH_OPENCV=
EXIT /B


:EOF