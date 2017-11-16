function [net] = int_net(use_gpu)
%-------------------------------------------------------------------------
% Add caffe/matlab to your Matlab search PATH in order to use matcaffe
if exist('/home/caffe/matlab/+caffe', 'dir')
  addpath('/home/caffe/matlab');
else
  error('Please run this demo from caffe/matlab/demo');
end

% Set caffe mode
if exist('use_gpu', 'var') && use_gpu
  caffe.set_mode_gpu();
  gpu_id = 0;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);
else
  caffe.set_mode_cpu();
end

% Initialize the network using BVLC CaffeNet for image classification
% Weights (parameter) file needs to be downloaded from Model Zoo.
model_dir = '/home/caffe/examples/test_yale/';
net_model = [model_dir 'deploy.prototxt'];
net_weights = [model_dir 'snapshot/yale_100_200_iter_80000.caffemodel'];
phase = 'test'; % run with phase test (so that dropout isn't applied)
if ~exist(net_weights, 'file')
  error('Please download CaffeNet from Model Zoo before you run this demo');
end

% Initialize a network
net = caffe.Net(net_model, net_weights, phase);