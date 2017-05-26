import numpy as np
import re

data = open("dump.txt", "r")
lines = data.readlines()
rown = len(lines)

#rssi_pre = open("../rssi_log.txt", "r")
#rssi_pre_lines = rssi_pre.readlines()
#rssi = open("rssi_log.txt", "w")
#rssi_lines = rssi.readlines()

f = open('decoded_data_file.txt', 'w')

bit_len = 12*2

start_bit = 48
index = 0
errorbits = 0
totalbits = 0
while index<rown:
	line = lines[index]
	
	if len(line)==1989:
		decoded_data = str()
		bit_index = start_bit
		while bit_index<start_bit+bit_len*70:
			one_num = 0
			start_ref = bit_index
			p = start_ref
			while p<start_ref+bit_len:
				for i in range(0,8):
					one_num += int('{:08b}'.format(int(line[p:p+2],16))[i])
				p += 2

			if one_num>48:
				decoded_data += str('0')
			else:
				decoded_data += str('1')
		
			bit_index += bit_len

		print decoded_data
		f.write(decoded_data)
		f.write("\n")
		#rssi.write(rssi_pre_lines[index])
		#rssi.write("\n")

	index += 1

f.close()
data.close()
