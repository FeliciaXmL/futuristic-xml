#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5fc874388ebc68001c2073dd/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/5fc874388ebc68001c2073dd/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/5fc874388ebc68001c2073dd/webhook/build/publish > /dev/null
