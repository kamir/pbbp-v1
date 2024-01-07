#!/bin/bash

source ./../cfg/env.sh

source $BOT_BASE_DIR/bin/init-venv.sh

#
# We use some of the OPI-BOT-COMPONENTS
#
echo $BOT_BASE_DIR
echo "START COMMAND:"
echo "--------------"
echo ""$BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api/exec.sh $BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api""
source $BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api/exec.sh $BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api