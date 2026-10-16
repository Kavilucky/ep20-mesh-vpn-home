#!/bin/sh
# Подключение Linux-устройства к своему Headscale (черновик)
# Использование: sh connect_linux.sh https://ваш-сервер
set -e
SERVER="${1:-http://100.64.0.1:8080}"
echo "Сервер: $SERVER"
echo "1. Установи Tailscale из репозитория дистрибутива."
echo "2. Выполни: tailscale up --login-server=$SERVER"
echo "3. Ключ pre-auth создай на сервере: docker exec headscale headscale preauthkeys create --reusable --expiration 24h"
tailscale up --login-server="$SERVER"
