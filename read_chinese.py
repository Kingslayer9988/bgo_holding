import re
from PyPDF2 import PdfReader

# Function to extract text from PDF
def extract_text_from_pdf(pdf_path):
    with open(pdf_path, 'rb') as file:
        reader = PdfReader(file)
        text = ''
        for page in reader.pages:
            text += page.extract_text()
        return text

# Function to parse the extracted text
def parse_text(text, item_list):
    # Find the 8-digit number
    big_number_match = re.search(r'\b\d{8}\b', text)
    big_number = big_number_match.group() if big_number_match else 'Not found'
    
    # Split text into lines
    lines = text.split('\n')
    
    # Find item numbers, their quantities, and build times
    items = {}
    for line in lines:
        for item in item_list:
            if item in line:
                match = re.search(rf'(\d+\s*\d*)\s+{re.escape(item)}\s+©\s+(\d+)\s+(\d+)\s+min', line, re.IGNORECASE)
                if match:
                    item_number = match.group(1).replace(' ', '')
                    quantity = int(match.group(2))
                    build_time = int(match.group(3))
                    items[item] = {'item_number': item_number, 'quantity': quantity, 'build_time': build_time}
                else:
                    # Debug print to check the line that failed to match
                    print(f'Failed to match line: {line}')
    return big_number, items

# Function to calculate the required values
def calculate_values(items):
    results = {}
    total_time = 0
    for item, data in items.items():
        total_item_time = data['quantity'] * data['build_time']
        results[item] = total_item_time
        total_time += total_item_time
    return results, total_time

# Define the item list
item_list = [
    'DOCKLANDS DOCK-IN-BAY', 
    'BASIC WORKSTATION', 
    'CASUAL Outdoor Table High 420', 
    'C-Side Table', 
    'T-PANEL BASIC'
]

# Extract text from PDF
pdf_path = 'winshit/FAKE_CHINESE_COMPANY_DELIVERY_NOTE.pdf'
text = extract_text_from_pdf(pdf_path)

# Parse the text
big_number, items = parse_text(text, item_list)

# Calculate the values
results, total_time = calculate_values(items)

# Print the results
print(f'Big Number: {big_number}')
for item, value in results.items():
    hours = value // 60
    minutes = value % 60
    print(f'{items[item]["item_number"]} | {item} | {items[item]["quantity"]} Units x {items[item]["build_time"]} min = {value} mins => {hours},{minutes}h')
print(f'Total Time for all items = {total_time // 60},{total_time % 60}h')
