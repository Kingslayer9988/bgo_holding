#!/bin/bash

# Terminal logo
echo ".~~~.";                                                                                              
echo "    !@@@:";                                                                                              
echo "    !@@@:";                                                                                              
echo "    !@@@:   .::::.                                        .:::::.";                                      
echo "    !@@@!?P#&@@@@&BY!.          .!JPGBBG5?^!BBY        ~YG#@@@@@#GJ^";                                   
echo "    !@@@@@@#PJ?JYG&@@#J.      :Y&@@@#BB#@@@&@@G      7B@@@G5J?J5B@@@G~";                                 
echo "    !@@@@P~       .7#@@G.    ~&@@G!:   .:?#@@@G     5@@&?:       ^Y@@@J";                                
echo "    !@@@Y           :#@@5   .#@@5         :#@@G    ?@@&~           7@@@~";                               
echo "    !@@@^            Y@@B   ^@@@!          P@@G    P@@G            .#@@J";                               
echo "    !@@@Y           :#@@5    P@@B^        7@@@?    ?@@&~           7@@@~";                               
echo "    !@@@@P~       .7#@@G.    .P@@@P7~^^!JB@@&?      5@@&J:       ^Y@@@?";                                
echo "    !@@@@@@#PYJJ5G&@@#?        ~5#@@@@@@@@BJ:        7B@@@B5JJJ5B@@@G~";                                 
echo "    ^GG5^?PB&@@@@#GY!.           .^!7777~:             ~JG#&@@@&#P?^";                                   
echo "        .::::.                         .^^^           ..:::.                                .:.";   
echo "                            :          P@@B      ..  .    ..    ..  .!:  ...   ..    ...   ^!:7:";   
echo "                          J#@P~.    .~P@@&~    .7^^7^:!::!^:!::7^:!::?^.:~^!~ !^:~! ~~^~~  :7!~.:";  
echo "                          ^P&@@#GPPG#@@&P^     .7. 7: !^~!  !~:7  !~ 7: ~~:~7.7. ^7.?^:^~ .7::!!!";  
echo "                            :75G#&&#G57:       .^  ^. ^: ^^^^ .^  :: ^^.:^:^^ ~~^!! :^^^.  ^^^^^^:"; 
echo "                                 ..             .                         .  .:^^^.";                
echo "                                               .7. ...   ...  :^  ..  :~. ~.^!  .";                  
echo "                                               .7.^~:^!.^~:^7.:~ !^^~.~7:.7.^!:~^";                  
echo "                                               .7.!~  7^!^ .?.^!.~^^!.:7  ?.^7~!:";                  
echo "                                               .^ .^^^: :!^^?.:^ ^^^^  ^^.^.:^ .~.";                 
echo "                                                        .^^^:";                                      


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
#pip install PyPDF2 pytesseract Pillow

# Prompt the user for input
echo "Press 'r' to read from PDF or 't' for telekinesis (read from clipboard):"
read -r choice

# Execute the appropriate Python script based on user input
if [ "$choice" == "r" ]; then
    python3 read_chinese.py
elif [ "$choice" == "t" ]; then
    python3 telekinesis_chinese.py
else
    echo "Invalid choice. Please press 'r' or 't'."
fi

# Deactivate the virtual environment
deactivate
