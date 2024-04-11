#!/bin/sh

set -e

(./listmonk --idempotent --upgrade --yes || ./listmonk --install --upgrade --yes)

exec ./listmonk