#!/bin/bash

git fetch origin
LOCALUPDATES=$(git log origin/main..HEAD --oneline)
echo $LOCALUPDATES
if ! [ -z "$LOCALUPDATES"]
then
    exit 3
fi
INCOMINGUPDATES=$(git log HEAD..origin/main --oneline)
if [ -z "$INCOMINGUPDATES"]
then
    exit 4
fi

echo hello

git pull
