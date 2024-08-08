#!/bin/bash

# Get from URL in the Edit page for software item with current version of MacAdmins Python
macadmins_python_software_id=""

# Path to the python script - upload to Addigy and grab path in Edit page
script_path=""
executable_path="/Library/ManagedFrameworks/Python/Python3.framework/Versions/Current/bin/python3"
if [[ ! -f "$executable_path" ]]; then
    echo "MacAdmins Python file does not exist - deploying now."
    /Library/Addigy/go-agent policier install "$macadmins_python_software_id"
fi


"$executable_path" "$script_path"