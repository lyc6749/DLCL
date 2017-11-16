# Intro
The scourse code of the paper "Face Template Protection Using Deep LDPC Codes Learning". This code aims to implement a face template protection technique by using multi-label learning, which maps the facial features into low-density parity-check (LDPC) codes.This implementation is based on [Caffe Toolbox](https://github.com/BVLC/caffe). In this paper, we use the [LDPC coding](http://www.cs.utoronto.ca/~radford/ldpc.software.html) algorithm developed by Radford M. Neal and [multi-label learning](https://github.com/zkl20061823/DRML) algorithm developed by Zhao, Kaili.
# File structure
Based on the caffe toolbox, we organize the source files as follows:
- `testing/network/`: Network architecture which we used for testing.
- `testing/test_on_Matlab/`: Testing source code on Matlab.
- `train network/`: The train network architecture on the database.
