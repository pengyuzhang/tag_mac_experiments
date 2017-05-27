import numpy as np
import re

data = open('decoded_data_file.txt', 'r')
lines_total = data.readlines()
rown_total = len(lines_total)
num_tags = 4

div_round = 3
step = int(rown_total/div_round)
throughput = [0]*div_round
fairness = [0]*div_round

rown_index = 0
while rown_index<div_round:

	lines = lines_total[rown_index*step:(rown_index*step+step)]
	rown = len(lines)

	tag_bits_count = [0]*20

	index = 0
	while index<rown:
		line = '0'+lines[index]
		
		if len(line)==72:
			index_tmp = 0
			while index_tmp<len(line):
				tag_id_tmp = 1
				while tag_id_tmp<=num_tags:
					if line[index_tmp:index_tmp+8]=='{:08b}'.format(tag_id_tmp):
						tag_bits_count[tag_id_tmp-1] += 8
					tag_id_tmp += 1
				index_tmp += 8

		index += 1

	
	bits_sum = 0
	index = 0
	while index<num_tags:
		bits_sum += tag_bits_count[index]
		index += 1

	index = 0
	bits_sum_tmp = 0
	while index<num_tags:
		bits_sum_tmp += pow(tag_bits_count[index],2)
		index += 1

	fairness_index = pow(bits_sum,2)/float(num_tags*bits_sum_tmp)

	print tag_bits_count
	#print bits_sum*4/9/84864*60
	#print fairness_index
	throughput[rown_index] = (float(bits_sum)*div_round)/30/1000/(50.4/(50.4+37.6))
	fairness[rown_index] = fairness_index

	rown_index += 1
	
print np.mean(throughput), np.std(throughput) 
print np.mean(fairness), np.std(fairness) 

data.close()
