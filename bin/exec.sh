#!/bin/bash

export expanded_env_path=$(realpath ./../cfg/.env.sh)

source $expanded_env_path

source $BOT_BASE_DIR/bin/init-venv.sh

# Path to store the PIDs
PID_FILE="my_processes.pid"

# Clear the PID file
echo "" > $PID_FILE

#
# We use some of the OPI-BOT-COMPONENTS
#
export ARG1=$expanded_env_path
export ARG_PID=$(realpath $PID_FILE)


# Backend Services
export ARG2=$BOT_BASE_DIR/assistants/opi-bot-poc/components/asynch-event-api
source $ARG2/exec.sh $ARG1 $ARG2 $ARG_PID &
echo $! >> $PID_FILE

# Frontend Services
export ARG2=$BOT_BASE_DIR/assistants/opi-bot-poc/components/ws_server
source $ARG2/exec.sh $ARG1 $ARG2 $ARG_PID &
echo $! >> $PID_FILE

export ARG2=$BOT_BASE_DIR/assistants/opi-bot-poc/components/ocr-service
source $ARG2/exec.sh $ARG1 $ARG2 $ARG_PID &
echo $! >> $PID_FILE

export ARG2=$BOT_BASE_DIR/assistants/opi-bot-poc/components/chainlit-chat-client
source $ARG2/exec.sh $ARG1 $ARG2 $ARG_PID &
echo $! >> $PID_FILE
