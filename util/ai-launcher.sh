#!/bin/bash

# used to copy the source directory into a new where each instance gets its own files - prevent locks

CHAT_DATE=`date +%Y%m%d-%H%M%S-%N | cut -b1-21`
NEW_DIR=/home/CHAT_USER/.aichat-history/aichat-$CHAT_DATE
mkdir -p /home/CHAT_USER/.aichat-history/
cp -r /home/CHAT_USER/.config/aichat/ $NEW_DIR

export AICHAT_CONFIG_DIR="$NEW_DIR"
/usr/local/bin/aichat --rag AI_RAG_ALL --role AI_ROLE_STARTER
