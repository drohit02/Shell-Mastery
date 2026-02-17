#!/bin/bash 

#===============================================================================================
#1. How to read input in shell script?
#===============================================================================================
# Input in shell script is read using the "read" command.
# The read command takes user input from standard input (keyboard)
# and stores it into a variable.
#
# Example:
# read name
# echo "Hello $name"
#===============================================================================================


#===============================================================================================
#2. Various ways to read input with examples
#===============================================================================================

# 1) Simple input
# read name
# echo "Name: $name"

# 2) With prompt (recommended way)
# read -p "Enter your name: " name
# echo "Name: $name"

# 3) Silent input (for passwords)
# read -s -p "Enter password: " pass
# echo
# echo "Password captured"

# 4) Read multiple variables
# read first last
# echo "First: $first, Last: $last"

# 5) Read with timeout (wait limited seconds)
# read -t 5 -p "Enter value within 5 seconds: " value

# 6) Read array input
# read -a arr
# echo "First element: ${arr[0]}"

#===============================================================================================


#===============================================================================================
#3. Constraints and options used with read command
#===============================================================================================
# -p  -> Display prompt
# -s  -> Silent mode (no echo to screen)
# -t  -> Timeout in seconds
# -a  -> Read input into array
# -n  -> Read only N characters
# -r  -> Prevent backslash escaping (recommended)

# Example using constraints:
# read -n 4 -p "Enter 4 digit PIN: " pin
# echo
# echo "PIN Entered: $pin"

# Best Practice:
# Use -r to avoid issues with backslash characters.
# Example:
# read -r input
#===============================================================================================


#===============================================================================================
#4. Key considerations while using the read command
#===============================================================================================

# 1) Always use -r (recommended)
# Prevents backslash (\) from being treated as escape character.
# Example:
# read -r input

# 2) Handle empty input
# User may press Enter without typing anything.
# Example:
# if [ -z "$input" ]; then
#     echo "Input cannot be empty"
# fi

# 3) Quote variables while using them
# Prevents word splitting and glob expansion.
# Example:
# echo "$input"

# 4) Be careful with -s (silent mode)
# Used for passwords. Always print a newline after it.
# Example:
# read -s -p "Enter password: " pass
# echo

# 5) Use timeout (-t) carefully
# Script continues if user does not respond in given time.
# Check exit status ($?) if needed.
# Example:
# read -t 5 value
# if [ $? -ne 0 ]; then
#     echo "Timeout occurred"
# fi

# 6) Validate input when required
# Example (number validation):
# if ! [[ "$num" =~ ^[0-9]+$ ]]; then
#     echo "Invalid number"
# fi

# Best Practice:
# Always validate and sanitize user input
# before using it in logic or commands.
#===============================================================================================


# Shell-Mastery-02 : Write a bash script that takes a user's name as input and uses the echo command to greet the user with "Hello, [name]!". 

#Message print on the input
echo "Enter OS used by you : "

#read command to get the input from the user
read os_used

#acessing the given input by the user
echo "Ohh !!! Great OS you have : $os_used"

