#!/bin/bash

# Check if a text file with a list of IP addresses was provided as an argument
if [ $# -eq 0 ]; then
  echo "Error: Please provide a text file with a list of IP addresses as an argument"
  exit 1
fi

# Check if masscan is installed
if ! [ -x "$(command -v masscan)" ]; then
  echo "Error: masscan is not installed"
  exit 1
fi

# Scan the provided text file for FTP servers that allow anonymous login
masscan -p 21 --open -iL $1 --banners -oG - | grep 'FTP' | grep 'anonymous'
