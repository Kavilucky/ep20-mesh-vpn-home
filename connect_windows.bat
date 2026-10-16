@echo off
REM Подключение Windows к своему Headscale (черновик)
REM Использование: connect_windows.bat https://ваш-сервер
set SERVER=%1
if "%SERVER%"=="" set SERVER=http://100.64.0.1:8080
echo Сервер: %SERVER%
echo 1. Установи Tailscale с сайта проекта.
echo 2. Выполни в командной строке: tailscale up --login-server=%SERVER%
echo 3. Ключ pre-auth создай на сервере: docker exec headscale headscale preauthkeys create --reusable --expiration 24h
tailscale up --login-server=%SERVER%
