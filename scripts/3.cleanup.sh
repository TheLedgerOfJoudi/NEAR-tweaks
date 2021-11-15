#!/usr/bin/env bash

set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$BENEFICIARY" ] && echo "Missing \$BENEFICIARY environment variable" && exit 1
[ -z "$CONTRACT" ] || echo "Found it! \$CONTRACT is set to [ $CONTRACT ]"
[ -z "$BENEFICIARY" ] || echo "Found it! \$BENEFICIARY is set to [ $BENEFICIARY ]"

near delete $CONTRACT $BENEFICIARY

yarn clean

exit 0