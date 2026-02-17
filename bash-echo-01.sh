#!/bin/bash

#===============================================================================================
#1. What is shebang in shell script?
#===============================================================================================
# Shebang is the first line in a script that tells the system which interpreter
# should be used to execute the script.
# It starts with #! followed by the path of the interpreter.
# Example: #!/bin/bash
#===============================================================================================


#===============================================================================================
#2. Is it always needed to be the first line? If yes, why?
#===============================================================================================
# Yes, if used, it must be the first line.
# Because the OS reads the first line to decide which interpreter
# should execute the script.
# If not first, it will be treated as a normal comment and ignored.
# Without shebang, the script runs using the default shell of the user.
#===============================================================================================


#===============================================================================================
# 3. Various ways to write shebang and their use cases
#===============================================================================================
# 1) Using absolute path (recommended for fixed environment)
# Example:
# !/bin/bash
# Use case: When you are sure bash is located at /bin/bash.

# 2) Using env command (portable way)
# Example:
# !/usr/bin/env bash
# Use case: Finds bash from system PATH.
# Best for portability across different systems.

# 3) For sh (POSIX shell)
# Example:
# !/bin/sh
# Use case: When writing portable POSIX-compliant scripts.

# 4) For other interpreters
# Python:
# !/usr/bin/env python3
# Perl:
# !/usr/bin/perl
# Use case: When writing scripts in other languages.
#===============================================================================================

# Shell-Mastery-01 : Write the shell script to echo the message 
echo "Start the Echo exercise !!!!!"
echo "Shell-Mastery exercise"