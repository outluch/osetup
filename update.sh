#!/bin/bash

OSETUP_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $OSETUP_DIR
git pull
