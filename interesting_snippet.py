
import sys


def find_pattern(dump, pattern_list):
	#always find a single ret
	for i in xrange(0,len(dump)):
		line_list = dump[i].split()
		length = len(line_list)
		if length < 1:
			continue
		if not 'ret' == line_list[length-1]:
			continue
		count = len(pattern_list) - 1
		for j in range(i-1, -1, -1):
			if pattern_list[count] in dump[j]:
				count -= 1
				if count < 0:
					return j
			else:
				break

	return -1



# TODO: Loading a Constant








# TODO: Loading from Memory
# TODO: Storing to Memory
# TODO: Arithmetic and Logic

def main():
	filename = sys.argv[1]
	with open(filename, 'r') as f:
		dump = f.readlines()

	retval = find_pattern(dump, ['mov    %ebx,%eax','pop    %ebx'])
	print 'it is on line ' + str(retval) + ' in ' + filename





if __name__ == '__main__':
	main()




