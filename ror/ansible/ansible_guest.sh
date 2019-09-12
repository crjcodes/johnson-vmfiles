#!/usr/bin/env bash
# TODO: this installs vs 2.0; how about the latest?  At least 2.5?
#
echo "............Updating apt..."
sudo apt-get update
echo "............Installing ansible..."
sudo apt-get install -y ansible
