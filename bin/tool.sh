#!/bin/bash

# Source the environment variables
source ./../cfg/.env.sh

#Activate the environment
source $BOT_BASE_DIR/bin/init-venv.sh


# Define the commands as an array
commands=(
    "check-data-stage   : Check data stage"
    "get-all-unrefined  : Get all unrefined data items"
    "manage-root-doc    : Manage the root document"
    "start-all-services : Activate the bot"
    "stop-all-services  : Deactivate the bot"
    "exit               : Exit the menu"
)

# Function to execute the selected command
execute_command() {
    case $1 in
        "check-data-stage")
            python $BOT_BASE_DIR/bin/tools/check-data-stage.py
            ;;
        "get-all-unrefined")
            python $BOT_BASE_DIR/bin/tools/get-all-unrefined.py
            ;;
        "manage-root-doc")
            python $BOT_BASE_DIR/assistants/opi-bot-poc/components/xmindbrain/manage-root-doc.py
            ;;
        "start-all-services")
            source $BOT_BASE_DIR/bin/exec.sh
            exit 0
            ;;
        "stop-all-services")
            source $BOT_BASE_DIR/bin/kill.sh
            exit 0
            ;;
        "exit")
            exit 0
            ;;
        *)
            echo "Invalid option: $REPLY"
            ;;
    esac
}

# Main menu loop
while true; do
    echo "Select a command to run:"
    select cmd in "${commands[@]}"; do
        # Extract only the command key (before the colon)
        cmd_key=$(echo $cmd | cut -d':' -f1)
        execute_command $cmd_key
        break
    done
    echo "DONE--------------------------------"
done
