#!/usr/bin/env bash
cd ..
git clone --recursive https://github.com/tensorflow/tensorflow.git
cd ./tensorflow/
git checkout r2.3
cd ../tflite_micro_compiler
mkdir build && cd build
cmake -DGET_TF_SRC=ON TF_TAG=v2.2.0 ..
cmake ..
cd ../../tensorflow
pwd
make -f tensorflow/lite/micro/tools/make/Makefile hello_world_bin
cd ../tflite_micro_compiler/
make
