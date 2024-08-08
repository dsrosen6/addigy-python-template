#!/bin/bash

# Get from Edit page for software item with current version of MacAdmins Python
macadmins_python_software_id="" 
executable_path="/Library/ManagedFrameworks/Python/Python3.framework/Versions/Current/bin/python3"
if [[ ! -f "$executable_path" ]]; then
    echo "MacAdmins Python file does not exist - deploying now."
    /Library/Addigy/go-agent policier install "$macadmins_python_software_id"
fi


"$executable_path" <<EOF
# Python script here
EOF