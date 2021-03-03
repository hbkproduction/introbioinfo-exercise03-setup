#!/bin/bash
# File: exercise03-setup.sh                                                    #
# Author: Hyunbin Kim (khb7840@gmail.com)

# Variables
DOCKER_ID="khb7840"
PREFIX="introbioinfo"
EXERCISE_NAME="exercise03"
EXERCISE_DIR="$HOME/$EXERCISE_NAME/"

# Make directory
if [ ! -d "$EXERCISE_DIR" ]; then
    mkdir $EXERCISE_DIR
fi

# Run docker
docker run -it --mount type=bind,src=$EXERCISE_DIR,target=/home/$EXERCISE_NAME/$EXERCISE_NAME \
--name $EXERCISE_NAME "$DOCKER_ID/$PREFIX-$EXERCISE_NAME"
