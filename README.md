# Intro
The scourse code of the paper "Face Template Protection Using Deep LDPC Codes Learning". This code aims to implement a face template protection technique by using multi-label learning, which maps the facial features into low-density parity-check (LDPC) codes.This implementation is based on [Caffe Toolbox](https://github.com/BVLC/caffe). In this paper, we use the [LDPC coding](http://www.cs.utoronto.ca/~radford/ldpc.software.html) algorithm developed by Radford M. Neal and [multi-label learning](https://github.com/zkl20061823/DRML) algorithm developed by Zhao, Kaili. The [trained CNN models](https://pan.baidu.com/s/1o78p7ui) can be downloaded.
# File structure
Based on the caffe toolbox, we organize the source files as follows:
- `testing/network/`: Network architecture which we used for testing.
- `testing/test_on_Matlab/`: Testing source code on Matlab.
- `train network/`: The train network architecture on the database.
- `image/`: The images of the samples.
# Introduction
We propose a face template protection technique by using multi-label learning, which maps the facials into low-density parity-check (LDPC) codes. Firstly, a random binary sequence is generated to represent a user and further hashed to produce the protected template. During the training, the random binary sequences are encoded by an LDPC encoder to produce diverse binary codes. Based on carefully designed deep multi-label learning, the facial features of each user are mapped to a diverse binary code. In the process of recognition and verification, the deep CNN mapping architecture is modeled as a Gaussian channel, while the noise brought by intra-variations in the outputs of CNN can be removed by the LDPC decoder. 

![Image](https://github.com/lyc6749/DLCL/blob/master/image/framework.jpg)
# Database
The databases used in the proposed scheme are [extended Yale Face B](http://vision.ucsd.edu/content/extended-yale-face-database-b-b) and [PIE](http://www.cs.cmu.edu/afs/cs/project/PIE/MultiPie/Multi-Pie/Home.html) Database, the samples of the databases and the 
corresponding preprocessed outputs are as following:

![Image](https://github.com/lyc6749/DLCL/blob/master/image/samples.jpg)
# Results
We show the ROC curves on PIE and extened Yale B here.

![Image](https://github.com/lyc6749/DLCL/blob/master/image/PIE_ROC.jpg)
![Image](https://github.com/lyc6749/DLCL/blob/master/image/Yale_ROC.jpg)
# More info
- **Contact**: Please send comments to Lingying Chen (chenly@whut.edu.cn)
