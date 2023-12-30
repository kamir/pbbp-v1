#!/bin/bash

source ./../cfg/env.sh

source $BOT_BASE_DIR/bin/init-venv.sh

pip install -r $BOT_BASE_DIR/assistants/requirements.txt

### Prepare Assistant modules, working on MY-MEMORY
git submodule add https://github.com/kamir/opi-bot-poc $BOT_BASE_DIR/assistants/opi-bot-poc
git submodule update --init --recursive

### Prepare MY-MEMORY
git submodule add https://github.com/kamir/my-memories-mk-v1-001 $BOT_BASE_DIR/data-stage
git submodule update --init --recursive

mkdir $BOT_BASE_DIR/data-stage/
mkdir $BOT_BASE_DIR/data-stage/llama-index
mkdir $BOT_BASE_DIR/data-stage/raw-data-temp
mkdir $BOT_BASE_DIR/data-stage/raw-data-stage
mkdir $BOT_BASE_DIR/data-stage/context1
mkdir $BOT_BASE_DIR/data-stage/context2
mkdir $BOT_BASE_DIR/data-stage/context3

#
# We use some of the OPI-BOT-COMPONENTS
#
source $BOT_BASE_DIR/assisstent/opi-bot-poc/components/asynch-event-api/bootstrap.sh true