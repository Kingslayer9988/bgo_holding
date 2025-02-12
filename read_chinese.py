import re
import csv
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
            # Allow space wiggle room in item detection
            item_pattern = re.sub(r'\s+', r'\\s*', re.escape(item))
            match = re.search(rf'(\d+)\s+{item_pattern}\s+(\d+)\s+(\d+)\s*min', line, re.IGNORECASE)
            if match:
                item_number = match.group(1)
                quantity = int(match.group(2))
                build_time = int(match.group(3))
                items[item] = {'item_number': item_number, 'quantity': quantity, 'build_time': build_time}
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

# Function to read item list from CSV
def read_item_list(csv_path):
    with open(csv_path, newline='') as csvfile:
        reader = csv.reader(csvfile)
        return [row[0] for row in reader]

# Function to save extracted items to CSV
def save_extracted_items(csv_path, items, big_number):
    with open(csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['item', 'buildtime', 'Bignumber'])
        for item, data in items.items():
            writer.writerow([item, data['build_time'], big_number])

# Read the item list from CSV
item_list = read_item_list('Item_list.csv')

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

# Save extracted items to CSV
save_extracted_items('Item_list.csv', items, big_number)

# Debug output for the PDF parsing
print("\nDebug Output:")
print(f'Extracted Text:\n{text}')
print(f'Parsed Items:\n{items}')
