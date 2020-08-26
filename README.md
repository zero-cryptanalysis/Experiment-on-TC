# Experiment-on-TC
The Type-II GFS we used has block size 16 bits and key size 16 bits. Following
the structure of Type-II GFS, the 16-bit plaintext is divided into four parts
with the same length. And then the Type-II GFS applies a classical Feistel
transformation composed of XORing the round key and S-box operation for
every two sub blocks, and performs a cyclic shift of four sub blocks. In our
experiment, S-boxes we used in the Feistel transformation are those designed
for TWINE.
# Test Code
The test source code consists of two part, the first part is the code to test integral property of nibble named **test_Integral.cpp**. 
The other part is the code to test that the correlation of any set of masks in our zero-correlation linear hull is zero named **test_ZC.cpp**
## First Part
To run our source code, one can first compile our source code using the following command:  
`g++ --std c++11 test_Integral.cpp -o test_Integral`
 
Then run the program by using:  
`./test_Integral` 

Then the program result will be printed on the screen. Shown is the frequency of appearance of 16 values of balanced nibble after 10 rounds of toy-cipher encryption.

## Second Part
Since the data complexity of verifying zero correlation is as high as 2^32.  
To run our source code, one can first compile our source code using the following command:  
`g++ --std c++11 test_ZC.cpp -o test_ZC`  
In order to experiment in parallel one can run:  
`./test_ZC > /test/test.txt`  
Experiment results will exist in subfolders named **test**
