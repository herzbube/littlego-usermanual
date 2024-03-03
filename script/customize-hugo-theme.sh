#!/bin/bash

BASE_FOLDER_PATH="$(dirname $0)/.."
CSS_SOURCE_FOLDER_PATH="$BASE_FOLDER_PATH/assets/css"
CSS_DESTINATION_FOLDER_PATH="$BASE_FOLDER_PATH/littlego-usermanual/themes/hugo-geekdoc/static"
CSS_FILE_NAME="custom.css"

if test $# -ne 0; then
  echo "Script does not support parameters"
  exit 1
fi

if test ! -d "$CSS_DESTINATION_FOLDER_PATH"; then
  echo "Hugo theme is not yet installed"
  exit 1
fi

echo "Add custom CSS to Hugo theme ..."
cp "$CSS_SOURCE_FOLDER_PATH/$CSS_FILE_NAME" "$CSS_DESTINATION_FOLDER_PATH/$CSS_FILE_NAME"
if test $? -ne 0; then
  echo "Failed."
  exit 1
fi

echo "Done"
