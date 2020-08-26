#!/bin/bash

mkdir test0
cd test0
cp ../test_ZC.cpp ./ 
g++ --std c++11 test_ZC.cpp -o test_ZC
for ((i=0;i<16;i++));
do	
	nohup ./test_ZC $i > r_$i.txt &	
done
cd ..



