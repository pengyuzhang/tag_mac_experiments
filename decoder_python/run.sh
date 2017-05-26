#bin/bash

tshark -r 8tag.pcap -T fields -e data > dump.txt

python get_data.py
