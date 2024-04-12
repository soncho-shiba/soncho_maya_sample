@echo off

set "TOOLS_NAME=soncho_maya_samples"
set "TOOLS_FOLDER=%~dp0"
set "TOOLS_PATH=%TOOLS_FOLDER%%TOOLS_NAME%"

set MAYA_VERSION=2025
set "MAYA_DEFAULT_WORKSPACE=C:\Users\%username%\Documents\maya\%MAYA_VERSION%"

IF EXIST "%MAYA_DEFAULT_WORKSPACE%\Maya.env" (
    echo Maya.env file already exists.
) ELSE (
    echo Creating Maya.env file
    echo. > "%MAYA_DEFAULT_WORKSPACE%\Maya.env"
    echo PYTHONPATH = %TOOLS_PATH%\scripts; >> "%MAYA_DEFAULT_WORKSPACE%\Maya.env"
    echo MAYA_SCRIPT_PATH = %TOOLS_PATH%\scripts; >> "%MAYA_DEFAULT_WORKSPACE%\Maya.env"
    echo MAYA_PLUG_IN_PATH = %TOOLS_PATH%\plugins; >> "%MAYA_DEFAULT_WORKSPACE%\Maya.env"
)

echo Opening Maya.env file
notepad "%MAYA_DEFAULT_WORKSPACE%\Maya.env"

pause