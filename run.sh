#!/bin/bash

folder_path="Questionnaire"
file_type="$1"

if [ "$file_type" == "c" ]; then
    c_files=$(find "$folder_path" -name "*.c")
    if [ -n "$c_files" ]; then
        for c_file in $c_files; do
            echo "Running: $c_file"
            gcc "$c_file" -o "${c_file%.c}.o" && ./"${c_file%.c}.o"
        done
    fi
elif [ "$file_type" == "cpp" ]; then
    cpp_files=$(find "$folder_path" -name "*.cpp")
    if [ -n "$cpp_files" ]; then
        for cpp_file in $cpp_files; do
            echo "Running: $cpp_file"
            g++ "$cpp_file" -o "${cpp_file%.cpp}.o" && ./"${cpp_file%.cpp}.o"
        done
    fi
elif [ "$file_type" == "python" ]; then
    python_files=$(find "$folder_path" -name "*.py")
    if [ -n "$python_files" ]; then
        for python_file in $python_files; do
            echo "Running: $python_file"
            python3 "$python_file"
        done
    fi
else
    echo "Invalid file type argument provided."
fi
