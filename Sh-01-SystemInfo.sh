#!/bin/bash
# ===============================
# System Info Reporter Variables
# ===============================

# USER_NAME:
# Stores the current logged-in user.
# Usually derived from environment variable $USER or command `whoami`.

# HOME_DIR:
# Stores the home directory path of the current user.
# Taken from environment variable $HOME.

# HOST_NAME:
# Stores the system hostname.
# Can be obtained using `hostname` command or $HOSTNAME variable.

# CURRENT_SHELL:
# Stores the default shell of the user.
# Taken from environment variable $SHELL.

# OS_INFO:
# Stores detailed operating system information.
# Typically extracted from /etc/os-release file using `cat`.

# KERNEL_VERSION:
# Stores the system kernel version.
# Obtained using `uname -r`.

# SYSTEM_ARCH:
# Stores system architecture (e.g., x86_64).
# Obtained using `uname -m`.

# UPTIME_INFO:
# Stores how long the system has been running.
# Extracted using `uptime` command.

# CURRENT_DATE:
# Stores the current system date.
# Obtained using `date` command.

# CURRENT_TIME:
# Stores the current system time.
# Can be formatted using `date +"%T"` or similar format.

# FULL_DATE_TIME:
# Stores combined date and time in a readable format.
# Useful for printing report timestamp.

# REPORT_TITLE:
# Stores the title of the output report (e.g., "System Information Report").

# SEPARATOR_LINE:
# Stores a formatted line (like ========) used for styling output.

# OS_NAME:
# Stores OS name (e.g., Ubuntu).
# Parsed from /etc/os-release (NAME field).

# OS_VERSION:
# Stores OS version (e.g., 22.04).
# Parsed from /etc/os-release (VERSION field).

# LOAD_AVERAGE:
# Stores system load average.
# Extracted from `uptime` output.

# SCRIPT_NAME:
# Stores the name of the script being executed.
# Can be accessed using $0.

# EXECUTION_USER:
# Stores user executing the script.
# Useful when script runs via sudo or automation.

# WORKING_DIRECTORY:
# Stores current directory where script is executed.
# Obtained using `pwd`.

# ===============================
# End of Variables Description
# ===============================

USER_NAME=
echo "==============================="
echo "System information Report"
echo "==============================="
echo "User Name:$(whoami)"

echo "==============================="  