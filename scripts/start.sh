#!/bin/sh

set -e

echo Waiting for database...

while ! nc -z ${LISTMONK_db__host} ${LISTMONK_db__port} 2>&1; do sleep 0.25; done; 

echo Database is now available

parallel --ungroup --halt now,done=1 ::: \
    "exec ./start_listmonk.sh" \
    "exec ./start_caddy.sh"

false
