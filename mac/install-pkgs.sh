#!/bin/bash

pip3 install pipenv
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#helm plugin install https://github.com/zendesk/helm-secrets
#helm plugin install https://github.com/databus23/helm-diff