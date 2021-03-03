################################################################################
# File: Dockerfile                                                             #
# Project: introbioinfo-exercise03-setup                                       #
# Created: 2021-02-26 16:13:58                                                 #
# Author: Hyunbin Kim (khb7840@gmail.com)                                      #
# Description:                                                                 #
#     This code is written as part of project "introbioinfo-exercise03-setup". #
# ---                                                                          #
# Last Modified: 2021-03-03 15:11:34                                           #
# Modified By: Hyunbin Kim (khb7840@gmail.com)                                 #
# ---                                                                          #
# Copyright © 2021 Hyunbin Kim, All rights reserved                            #
################################################################################

FROM conda/miniconda3
USER root
ARG EXERCISE_NAME=exercise03
RUN apt-get update && apt-get install -y build-essential vim nano gzip wget tar libgd-dev libpng-dev libjpeg-dev libwebp-dev libjpeg62-turbo libcairo2-dev libsdl-pango-dev lua5.3 libreadline-dev && rm -rf /var/lib/apt/lists/*

# install necessary tools
RUN conda install -c conda-forge -c bioconda gnuplot mummer spades quast

# create a user
RUN useradd --create-home --shell /bin/bash $EXERCISE_NAME
USER $EXERCISE_NAME
WORKDIR /home/$EXERCISE_NAME
# Make RUN commands use `bash --login`:
SHELL ["/bin/bash", "--login", "-c"]
RUN echo \
"---------------------------------------------------------------------------\n\
After registration to the assignment, please clone your exercise repository\n\
exercise01$ git clone [GITHUB_ASSIGNMENT_REPO_URL]\n\
---------------------------------------------------------------------------"\
> README