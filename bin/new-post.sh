#!/bin/bash

readonly REPO_ROOT=$(cd $(dirname ${BASH_SOURCE:-$0})/..; pwd)
readonly POST_DIR="$REPO_ROOT/docs/_posts"
# echo $REPO_ROOT

readonly FILENAME="$(date +'%F-%H%M%S')"
readonly DESTINATION="$POST_DIR/$FILENAME.md"

cat << EOT > $DESTINATION
---
layout: post
title:  ""
date:   $(date +'%F %T%z')
categories: podcast update
---
EOT

echo "New: $DESTINATION" >&2
