#!/bin/bash

# read $DIFF_JSON as json and get the list of file as json.files[i].path

json=$(cat $DIFF_JSON)
# splt each file as lines use yq, grep files with .md, and split each file in a new line
files=$(echo $json | yq e '.files[].path' - | grep .md | tr ' ' '\n')