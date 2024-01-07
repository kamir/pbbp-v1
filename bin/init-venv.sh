#!/bin/bash
#
# Define your Python environment you want to use.
#
#  You can use Anaconda to create a virtual environment. Open it in a Terminal Window, and you can
#  copy the command for activating the right environment.
#
#  Example: . /Users/mkaempf/opt/anaconda3/bin/activate && conda activate /Users/mkaempf/opt/anaconda3/envs/p4te;
#
export ENVIRONMENT_PATH=/Users/mkaempf/opt/anaconda3/envs/opi-bot-v2-dev

echo "> Activate PYTHON V-ENV in path: $ENVIRONMENT_PATH"

. /Users/mkaempf/opt/anaconda3/bin/activate && conda activate /Users/mkaempf/opt/anaconda3/envs/opi-bot-v2;

