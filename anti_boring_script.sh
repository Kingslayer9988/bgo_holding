#!/bin/bash

# Check if python3-venv is installed, and install it if necessary
if ! dpkg -s python3-venv >/dev/null 2>&1; then
    echo "python3-venv is not installed. Installing..."
    sudo apt update
    sudo apt install -y python3-venv
fi

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install necessary Python packages
pip install PyPDF2 pytesseract Pillow

# Terminal logo
echo " /$$$$$$$   /$$$$$$   /$$$$$$        /$$   /$$           /$$       /$$ /$$                    ";
echo "| $$__  $$ /$$__  $$ /$$__  $$      | $$  | $$          | $$      | $$|__/                    ";
echo "| $$  \ $$| $$  \__/| $$  \ $$      | $$  | $$  /$$$$$$ | $$  /$$$$$$$ /$$ /$$$$$$$   /$$$$$$ ";
echo "| $$$$$$$ | $$ /$$$$| $$  | $$      | $$$$$$$$ /$$__  $$| $$ /$$__  $$| $$| $$__  $$ /$$__  $$";
echo "| $$__  $$| $$|_  $$| $$  | $$      | $$__  $$| $$  \ $$| $$| $$  | $$| $$| $$  \ $$| $$  \ $$";
echo "| $$  \ $$| $$  \ $$| $$  | $$      | $$  | $$| $$  | $$| $$| $$  | $$| $$| $$  | $$| $$  | $$";
echo "| $$$$$$$/|  $$$$$$/|  $$$$$$/      | $$  | $$|  $$$$$$/| $$|  $$$$$$$| $$| $$  | $$|  $$$$$$$";
echo "|_______/  \______/  \______/       |__/  |__/ \______/ |__/ \_______/|__/|__/  |__/ \____  $$";
echo "                                                                                     /$$  \ $$";
echo "                                                                                    |  $$$$$$/";
echo "                             Kingslayer9988                                          \______/ ";

# Prompt the user for input
echo "Press 'r' to read from PDF or 't' for telekinesis (read from clipboard):"
read -r choice

# Execute the appropriate Python script based on user input
if [ "$choice" == "r" ]; then
    source venv/bin/activate
    python3 read_chinese.py
    deactivate
elif [ "$choice" == "t" ]; then
    source venv/bin/activate
    python3 telekinesis_chinese.py
    deactivate
else
    echo "Invalid choice. Please press 'r' or 't'."
fi
