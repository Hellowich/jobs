#!/bin/bash
tar -cvf archive.tar file1 file2 directory1
mkdir -p extracted
tar -xvf archive.tar -C extracted
ls -la extracted
# названия примерные, хз как их еще называть)