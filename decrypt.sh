#!/usr/bin/env bash

set -e

sops -d sops.env > .env

exit 0
