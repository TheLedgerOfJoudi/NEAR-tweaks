#!/usr/bin/env bash

set -e

echo ---------------------------------------------------------
echo "Step 1: Build the contract"
echo ---------------------------------------------------------

yarn build:release

echo ---------------------------------------------------------
echo "Step 2: Deploy the contract"
echo ---------------------------------------------------------

near dev-deploy ../build/release/proj.wasm

echo 'export CONTRACT=<dev-123-456>'

exit 0