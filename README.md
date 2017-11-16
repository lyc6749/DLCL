# Intro
The scourse code of the paper "Face Template Protection Using Deep LDPC Codes Learning".This code aims for testing the trained model on PIE and extended Yale B database for the deep LDPC codes learning method. This implementation is based on Caffe Toolbox.In this paper, we use the LDPC coding algorithm developed by Radford M. Neal http://www.cs.utoronto.ca/~radford/ldpc.software.html and multi-label learning developed by Zhao, Kaili https://github.com/zkl20061823/DRML.
# File structure
Based on the caffe toolbox, we organize the source files as follows:
- `testing/`: Network architecture and sourse code on Matlab which we used for testing.
- `model/`: The trained model on PIE and extended Yale B database.
