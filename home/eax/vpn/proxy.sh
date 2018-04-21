#!/bin/sh

set -e

USER=ubuntu
SERVER=11.22.33.44

ssh -N -v -D '127.0.0.1:3003' $USER@$SERVER
