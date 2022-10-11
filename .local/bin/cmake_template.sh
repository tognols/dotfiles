#!/bin/sh

# Little script that allows you to create a cmake c++ project based
# on a template


if [ "$#" != "2" ]; then
  echo "Usage: init <project_name> <language>"
  echo "project_name: creates a dir and initializes a repo"
  echo "language: choose language for correct template"
  echo "languages - cpp, c"
else
  PROJECT_NAME=$1
  LANGUAGE=$2

  if [ "$LANGUAGE" = "cpp" ]; then
    git init $PROJECT_NAME
    cp -r ~/.local/template/cmake_cpp/* $PROJECT_NAME
    cp ~/.local/template/cmake_cpp/.gitignore $PROJECT_NAME
    cd $1
    git add -A
    git commit -m "Init commit"
  fi
  if [ "$LANGUAGE" = "c" ]; then
    git init $PROJECT_NAME
    cp -r ~/.local/template/cmake_c/* $PROJECT_NAME
    cp ~/.local/template/cmake_c/.gitignore $PROJECT_NAME
    cd $1
    git add -A
    git commit -m "Init commit"
  fi
fi
