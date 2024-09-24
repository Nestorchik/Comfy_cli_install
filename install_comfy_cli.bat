@echo off
:: Set path to you Python
set python="c:\p312\python.exe"
:: GIT must be in the PATH
set git="git"
echo ==========================================================================
echo Creating "Virtual environmen"
"%python%" -m venv "%CD%\venv"
echo done
echo ==========================================================================
echo Upgrade "pip"
"%CD%\venv\Scripts\python" -m pip install --upgrade pip
echo done
echo ==========================================================================
echo Installing "comfy-cli"
"%CD%\venv\Scripts\python" -m pip install comfy-cli
echo done
echo ==========================================================================
echo Installing "ComfyUI" with "Manager"
"%CD%\venv\Scripts\comfy" --here --skip-prompt install --nvidia
echo done
echo ==========================================================================
echo Starting "ComfyUI"
"%CD%\venv\Scripts\comfy" launch -- --windows-standalone-build
echo ==========================================================================
pause
