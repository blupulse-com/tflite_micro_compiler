#!/bin/bash
set -e

cd `dirname "$BASH_SOURCE"`
make -C .. -f IFX_Makefile -j 4 COMPILED_FILES_SELECTION=reference run_examples

