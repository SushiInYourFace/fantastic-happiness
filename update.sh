#!/bin/bash

git fetch origin
LOCALUPDATES=$(git log origin/main..HEAD --oneline)
echo $LOCALUPDATES

if [ -z "$LOCALUPDATES"]
then
    exit 1
fi
echo Hi