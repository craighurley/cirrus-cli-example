#!/usr/bin/env bash

set -e

sops -e .env > sops.env
shred -z --remove .env

exit 0
