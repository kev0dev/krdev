@echo off

net session >nul 2>&1

:run_server
gtps.exe
set exit_code=%ERRORLEVEL%

if %exit_code% neq 42 (
  exit /b
)

goto run_server
