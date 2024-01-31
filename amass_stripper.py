import sys

def extract_subdomains(input_path, output_path):
    with open(input_path, 'r') as input_file, open(output_path, 'w') as output_file:
        for line in input_file:
            # Check if the line contains "(FQDN)"
            if "(FQDN)" in line:
                # Extract subdomain by splitting at "(FQDN)"
                subdomain = line.split('(FQDN)')[0].strip()
                
                # Write the extracted subdomain to the output file
                output_file.write(subdomain + '\n')

if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file_path> <output_file_path>")
        sys.exit(1)

    # Get input and output file paths from command-line arguments
    input_file_path = sys.argv[1]
    output_file_path = sys.argv[2]

    extract_subdomains(input_file_path, output_file_path)

