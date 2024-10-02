#!/bin/bash
# Script for setting up docker completions
# https://docs.docker.com/engine/cli/completion/#zsh
mkdir -p ~/.docker/completions
docker completion zsh > ~/.docker/completions/_docker


