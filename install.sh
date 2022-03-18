#! /usr/bin/env bash
# HEADER
# AUTHOR
version=0.03

# src https://stt.readthedocs.io/en/latest/
##
#  If pre-built binaries aren’t available for your system, 
#  you’ll need to install them from scratch. 
#  Follow the native client build and installation instructions.
#     https://stt.readthedocs.io/en/latest/
#     https://github.com/coqui-ai/STT
#
###
# Installing 

# Settting up python app and environment
# Install Cogui-ai

# Create a virtual environment
python3 -m venv venv-stt
source venv-stt/bin/activate

##  NOTE type `deactivate` to deactivate

# Install 🐸STT model manager
python -m pip install -U pip
python -m pip install coqui-stt-model-manager


# Run the model manager. A browser tab will open and you can then download and test models from the Model Zoo.
stt-model-manager



# Download pre-trained English model files
# curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.pbmm
# curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer

# Download example audio files
# curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/audio-0.9.3.tar.gz
# tar xvf audio-0.9.3.tar.gz

# Transcribe an audio file
# deepspeech --model deepspeech-0.9.3-models.pbmm --scorer deepspeech-0.9.3-models.scorer --audio audio/2830-3980-0043.wav


