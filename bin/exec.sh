#!/bin/bash

source ./../cfg/env.sh

source $BOT_BASE_DIR/bin/init-venv.sh

#
# We use some of the OPI-BOT-COMPONENTS
#
source $BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api/exec.sh $BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api