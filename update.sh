#!/bin/bash

git fetch origin
LOCALUPDATES=$(git log origin/main..HEAD --oneline)

if ! [ -z "$LOCALUPDATES" ]
then
    exit 3
fi
INCOMINGUPDATES=$(git log HEAD..origin/main --oneline)
if [ -z "$INCOMINGUPDATES" ]
then
    exit 4
fi

echo hello

git pull
