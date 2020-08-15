#!/bin/bash

## Clean process
ps -ax | egrep "(nomad|consul|redis)" | grep -v grep | awk '{print $1}' | xargs kill