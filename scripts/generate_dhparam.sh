#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
PROJECT_DIR=$(PWD)
openssl dhparam -out $PROJECT_DIR/certs/dhparam.pem 2048