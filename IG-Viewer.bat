@echo off
rem IG Viewer launcher - opens the app in Chrome with automatic thumbnail capture (no share prompt).
rem Keep this file in the SAME folder as instagram-viewer_x3.html
set "APP=%~dp0instagram-viewer_x3.html"
set "PROFILE=%LOCALAPPDATA%\IGViewer-Chrome"
set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not defined CHROME (
  echo Google Chrome was not found. Install Chrome and try again.
  pause
  exit /b 1
)
if not exist "%APP%" (
  echo instagram-viewer_x3.html must be in the same folder as this file.
  pause
  exit /b 1
)
start "" "%CHROME%" --user-data-dir="%PROFILE%" --auto-accept-this-tab-capture --no-first-run --no-default-browser-check "file:///%APP:\=/%"
