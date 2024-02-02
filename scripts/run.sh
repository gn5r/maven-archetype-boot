#!/bin/bash

set -e

ARCHETYPE_GROUP_ID=com.github.gn5r
ARCHETYPE_ARTIFACT_ID=maven-archetype-boot
ARCHETYPE_VERSION=0.2.0

if [ -n "$1" ]; then
  if [ ! -d "$1" ]; then
    echo "target directory \"$1\" is not exists"
    exit 1
  else
    cd "$1"
  fi
else
  cd "$(pwd)"
fi

mvn archetype:generate -DarchetypeGroupId=$ARCHETYPE_GROUP_ID \
  -DarchetypeArtifactId=$ARCHETYPE_ARTIFACT_ID \
  -DarchetypeArtifactVersion=$ARCHETYPE_VERSION
