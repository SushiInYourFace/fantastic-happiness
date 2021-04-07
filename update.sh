#!/bin/bash

git fetch origin
LOCALUPDATES=$(git log origin/main..HEAD --oneline)
echo $LOCALUPDATES