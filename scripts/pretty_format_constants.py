import re

def align_directives(content):
    # First pass: Find all directives and identify the longest name
    defines = []
    
    for line in content.split('\n'):
        # Match both #define NAME NUMBER and .equ NAME, VALUE patterns
        define_match = re.match(r'#\s*define\s+(\w+)\s+(.+)', line.strip())
        equ_match = re.match(r'\.\s*equ\s+(\w+),\s*(.+)', line.strip())
        
        if define_match:
            name, number = define_match.groups()
            defines.append(('define', name, number))
        elif equ_match:
            name, number = equ_match.groups()
            defines.append(('equ', name, number))
    
    if not defines:
        return content
    
    # Get the longest name length across all directives
    longest_name = max(defines, key=lambda x: len(x[1]))[1]
    longest_name_len = len(longest_name)
    
    # Second pass: Reconstruct with aligned numbers
    formatted_lines = []
    for line in content.split('\n'):
        define_match = re.match(r'#\s*define\s+(\w+)\s+(.+)', line.strip())
        equ_match = re.match(r'\.\s*equ\s+(\w+),\s*(.+)', line.strip())
        
        if define_match:
            name, number = define_match.groups()
            spaces_needed = longest_name_len - len(name) + 2
            formatted_line = f"#define {name}" + " " * spaces_needed + f"{number}"
        elif equ_match:
            name, number = equ_match.groups()
            spaces_needed = longest_name_len - len(name) + 2
            formatted_line = f".equ {name}," + " " * spaces_needed + f"{number}"
        else:
            formatted_line = line
            
        formatted_lines.append(formatted_line)
    
    return '\n'.join(formatted_lines)

def run():
    file = "../asm/include/items.inc"
    with open(file, "r") as infile:
        data = infile.read()
    with open("fixed/items.inc", "w") as outfile:
        outfile.write(align_directives(data))
        
if __name__ == "__main__":
    run()