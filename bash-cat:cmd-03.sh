#!/bin/bash

#===============================================================================================
#1. How to read a file and its content in shell script?
#===============================================================================================
# A file can be read using commands like cat, less, more, head, tail,
# or by reading line-by-line using a while loop.
#
# Example (line-by-line reading - recommended in scripts):
# while IFS= read -r line
# do
#     echo "$line"
# done < file.txt
#===============================================================================================


#===============================================================================================
#2. Various commands to read file content
#===============================================================================================

# 1) cat  -> Display full file content
# cat file.txt

# 2) less -> View file page by page (interactive)
# less file.txt

# 3) more -> Basic pager
# more file.txt

# 4) head -> Show first 10 lines (default)
# head file.txt

# 5) tail -> Show last 10 lines (default)
# tail file.txt

# 6) nl   -> Show file with line numbers
# nl file.txt

# 7) while read loop (best for processing in script)
# while IFS= read -r line
# do
#     echo "$line"
# done < file.txt

#===============================================================================================


#===============================================================================================
#3. Explain the cat command
#===============================================================================================
# cat stands for "concatenate".
# It is used to:
# - Display file content
# - Combine multiple files
# - Create new files using redirection
#
# Examples:
# cat file.txt
# cat file1.txt file2.txt
# cat file.txt > newfile.txt
#===============================================================================================


#===============================================================================================
#4. Key considerations and usage of cat command
#===============================================================================================

# 1) Not recommended for very large files
# It prints everything to terminal at once.

# 2) Prefer less for large files
# less file.txt

# 3) Avoid useless use of cat in scripts
# Instead of:
# cat file.txt | while read line
# Use:
# while read line
# do
#     echo "$line"
# done < file.txt

# 4) Use -n option to show line numbers
# cat -n file.txt

# 5) Use -b to number non-empty lines only
# cat -b file.txt

# Best Practice:
# Use cat for quick viewing or file merging.
# Use while-read loop for file processing inside scripts.
#===============================================================================================

# Shell-Mastery-01 : Write a Bash script that uses the cat command to display the contents of a text file named "exec_stdout.txt".

echo "Reading the test files using cat cmd !!!"

echo "Below is the Content of the File !!!"

cat ./utils/cat-cmd.txt # ./ points to the  current working directly and instead of the pwd we can used this
echo
echo

echo "Reading the file with 'pwd' and cat combination"
cat $(pwd)/utils/cat-cmd.txt
echo