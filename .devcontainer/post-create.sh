#!/bin/bash

# configure NVM
# Reference: https://github.com/microsoft/vscode-dev-containers/issues/559#issuecomment-693105152
source $NVM_DIR/nvm.sh
nvm install || true # ignore exit code due to npm prefix
nvm use --delete-prefix

# check versions
echo "node version: "
node --version
echo "npm version: "
npm --version

# install dependencies
npm install
