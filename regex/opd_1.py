import sys, os, re
import PyPDF2

def extract_text_from_pdf(path: str) -> str:
    with open(path, 'rb') as pdf_file:
        
        pdf_reader = PyPDF2.PdfReader(pdf_file)
        pdf_contents = ''
        for page_num in range(len(pdf_reader.pages)):
            page = pdf_reader.pages[0]
            pdf_contents += page.extract_text()
            
    return pdf_contents

# define command line arguments
pattern = sys.argv[1]
file_dir_path = sys.argv[2]

# Find all pdfs
all_files = os.listdir(file_dir_path)
all_pdf_files = []
for file in all_files:
    if file.endswith(".pdf"):
        all_pdf_files.append(fr"{os.getcwd()}\regex\{file}")

# Apply search pattern to pdf files
for pdf_path in all_pdf_files:
    pdf_text = extract_text_from_pdf(pdf_path)
    regex_match = re.match(pattern, pdf_text)
    if regex_match:
        print(f"The pattern was found in the text: {regex_match.group()}")
    else:
        print("No match was found.")

## Voorbeeld patronen
# name_pattern = r"[A-Z][a-z]+ [A-Z][a-z]+"
# url_pattern = r"https://[a-zA-Z]+\.[a-z]"
# date_pattern = r"\d{1,2}[-/]\d{1,2}[-/](\d{2}|\d{4})"
# money_pattern = r"[€$£]\d+([.,]\d{1,2})?"

