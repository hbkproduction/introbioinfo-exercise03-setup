#!/bin/bash
# File: restart-exercise.sh                                                    #
# Author: Hyunbin Kim (khb7840@gmail.com)

# Variables
DOCKER_ID="khb7840"
PREFIX="introbioinfo"
EXERCISE_NAME="exercise03"
EXERCISE_DIR="$HOME/$EXERCISE_NAME/"

# Run docker
docker restart $EXERCISE_NAME
docker exec -it $EXERCISE_NAME /bin/bash
