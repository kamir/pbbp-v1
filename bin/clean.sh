#!/bin/bash

source ./../cfg/.env.sh

source $BOT_BASE_DIR/bin/init-venv.sh

echo "--------------------------------------"
echo "Please execute the following commands:"
echo "--------------------------------------"
echo
echo "rm $BOT_BASE_DIR/.gitmodules"
echo "rm -rf $BOT_BASE_DIR/assistants/opi-bot-poc"
echo "rm -rf $BOT_BASE_DIR/data-stage/"
echo
echo "!!! WARNING !!!"
echo
echo "--> Make sure you have stored your data in a secure place!"
echo
echo "*** THERE IS NO UNDO ACTION ***"
echo