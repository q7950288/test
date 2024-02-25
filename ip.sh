#!/bin/bash 
cd /Users/qiuxujun/Desktop/ip_ctl/input_ip_file/ 
python3 /Users/qiuxujun/Desktop/ip_ctl/input_ip_file/ip.py 

src_file=/Users/qiuxujun/Desktop/ip_ctl/input_ip_file/output_ip_file.txt 
dst_file=/Users/qiuxujun/Desktop/ip_ctl/china_ip/input_ip_file.txt 
cp -f "$src_file" "$dst_file" 

cd /Users/qiuxujun/Desktop/ip_ctl/china_ip 
python3 /Users/qiuxujun/Desktop/ip_ctl/china_ip/no_china_ip.py 

src_file=/Users/qiuxujun/Desktop/ip_ctl/china_ip/output_ip_file.txt 
dst_file=/Users/qiuxujun/Desktop/ip_ctl/add_ip/input_ip_file.txt 
cp -f "$src_file" "$dst_file" 

cd /Users/qiuxujun/Desktop/ip_ctl/add_ip 
python3 /Users/qiuxujun/Desktop/ip_ctl/add_ip/ip.py 

src_file=/Users/qiuxujun/Desktop/ip_ctl/add_ip/output_ip_file.txt 
dst_file=/Users/qiuxujun/Desktop/ip_ctl/result/ip.txt 
cp -f "$src_file" "$dst_file" 

rm /Users/qiuxujun/Desktop/ip_ctl/input_ip_file/output_ip_file.txt 
rm /Users/qiuxujun/Desktop/ip_ctl/china_ip/input_ip_file.txt 
rm /Users/qiuxujun/Desktop/ip_ctl/china_ip/output_ip_file.txt 
rm /Users/qiuxujun/Desktop/ip_ctl/add_ip/input_ip_file.txt 
rm /Users/qiuxujun/Desktop/ip_ctl/add_ip/output_ip_file.txt