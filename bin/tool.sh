#!/bin/bash

source ./../cfg/env.sh
echo $BOT_BASE_DIR/

source $BOT_BASE_DIR/bin/init-venv.sh

python $BOT_BASE_DIR/bin/tools/check-data-stage.py




