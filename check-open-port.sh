#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Check Open Port
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 💡
# @raycast.argument1 { "type": "text", "placeholder": "IP / DNS" }
# @raycast.argument2 { "type": "text", "placeholder": "Port" }
# @raycast.packageName Network Tools

# Documentation:
# @raycast.description Checks if the port on remote host opened or closed.
# @raycast.author etoosamoe
# @raycast.authorURL https://github.com/etoosamoe

curl -s -X POST https://ports.yougetsignal.com/check-port.php\?remoteAddress\=$1\&portNumber\=$2 | grep -o "Open\|Closed"
