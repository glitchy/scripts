#!/bin/sh

# filename
filename=$1
# file extension
extension="${filename##*.}"

if [ "$extension" == "c" ]; then
   cp -n ~/.vim/templates/c_template.c ./$filename;
elif [ "$extension" == "cpp" ]; then
   cp -n ~/.vim/templates/cpp_template.cpp ./$filename;
elif [ "$extension" == "py" ]; then
   cp -n ~/.vim/templates/python_template.py ./$filename;
elif [ "$extension" == "tf" ]; then
   cp -n ~/.vim/templates/terraform.tf ./$filename;
else
  echo "Template not found"
  exit
fi

vim $filename
