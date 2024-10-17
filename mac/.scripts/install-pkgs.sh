#!/bin/bash

pip3 install pipenv
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

npm install --global yarn
yarn global add @usebruno/cli
