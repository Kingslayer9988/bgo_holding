import re
from PIL import ImageGrab
import pytesseract

# Function to extract text from image
def extract_text_from_clipboard():
    image = ImageGrab.grabclipboard()
    if isinstance(image, Image.Image):
        text = pytesseract.image_to_string(image)
        return text
    else:
        raise ValueError("No image found in clipboard")

# Function to parse the extracted text
def parse_text(text, item_list):
    # Find the 8-digit number
    big_number = re.search(r'\b\d{8}\b', text).group()
    
    # Debug print to check the extracted text
    print(f'Extracted text: {text}')
    
    # Find item numbers and their units
    items = {}
    for item in item_list:
        match = re.search(rf'{item}\s+(\d+)', text)
        if match:
            units = int(match.group(1))
            items[item] = units
    return big_number, items

# Function to calculate the required values
def calculate_values(items, item_values):
    results = {}
    for item, units in items.items():
        x = item_values.get(item, 1)  # Default to 1 if item not in item_values
        results[item] = units * x
    return results

# Define the item list and their corresponding values
item_list = [
    'DOCKLANDS DOCK-IN-BAY', 
    'BASIC WORKSTATION', 
    'CASUAL Outdoor Table High 420', 
    'C-Side Table', 
    'T-PANEL BASIC'
]
item_values = {
    'DOCKLANDS DOCK-IN-BAY': 10, 
    'BASIC WORKSTATION': 20, 
    'CASUAL Outdoor Table High 420': 30, 
    'C-Side Table': 40, 
    'T-PANEL BASIC': 50
}

# Extract text from clipboard
text = extract_text_from_clipboard()

# Parse the text
big_number, items = parse_text(text, item_list)

# Debug print to check parsed items and units
print(f'Parsed items and units: {items}')

# Calculate the values
results = calculate_values(items, item_values)

# Debug print to check calculated results
print(f'Calculated results: {results}')

# Print the results
print(f'Big Number: {big_number}')
for item, value in results.items():
    print(f'{item}_Time = {value}')
