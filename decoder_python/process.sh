#bin/bash

tshark -r dump.pcap -T fields -e data > dump.txt

python get_data.py
