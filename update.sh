#!/bin/bash

git fetch origin
LOCALUPDATES=$(git log origin/main..HEAD --oneline)
echo $LOCALUPDATES
if ! [ -z "$LOCALUPDATES"]
then
    exit 1
fi
INCOMINGUPDATES=$(git log HEAD..origin/main --oneline)
if [ -z "$INCOMINGUPDATES"]
then
    exit 1
fi

git pull
