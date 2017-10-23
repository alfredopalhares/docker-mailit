#!/bin/sh

set -e

confd -onetime -backend env

# Hack mailit does not recognize password in the config file
exec node "$@" --pass "$MAILIT_PASSWORD"

