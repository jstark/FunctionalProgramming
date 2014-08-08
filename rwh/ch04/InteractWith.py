import sys 

def interact_with(func, input_file, output_file):
	with open(input_file, 'r') as input, open(output_file, 'w') as output:
		input = input.read()
		output.write(func(input))

def id_func(inp): return inp # identity function

if __name__ == '__main__':
	_, input_file, output_file = sys.argv
	interact_with(id_func, input_file, output_file)
