#!/bin/sh

set -euo pipefail

export ORIGIN_0=${LISTMONK_ORIGIN_0:-$(openssl rand -hex 12)}
export ORIGIN_1=${LISTMONK_ORIGIN_1:-$(openssl rand -hex 12)}
export ORIGIN_2=${LISTMONK_ORIGIN_2:-$(openssl rand -hex 12)}
export ORIGIN_3=${LISTMONK_ORIGIN_3:-$(openssl rand -hex 12)}
export ORIGIN_4=${LISTMONK_ORIGIN_4:-$(openssl rand -hex 12)}

exec caddy run \
    --config Caddyfile \
    --adapter caddyfile 2>&1