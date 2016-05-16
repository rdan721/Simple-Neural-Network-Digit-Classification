% by Dan Reed
% This program initializes a neural network for classifying handwritten
% digits using the MNIST dataset. Note: the default names for the MNIST
% files are different than the ones used below.

% CONSTANTS
hidden_layer_count = 80; % num neurons in hidden layer 
learn_rate = 0.25;
train_length = 60000; % max of 60000
test_length = 10000; % max of 10000
epochs = 5; % number of times the entire set of training data will be used 
% to train the network

% read in training data
[train_images, train_labels] = readMNIST( ...
'trainingimages.idx3-ubyte', ... 
'traininglabels.idx1-ubyte',train_length,0);
% read in test data
[test_images, test_labels] = readMNIST( ...
'testimages.idx3-ubyte', ...
'testlabels.idx1-ubyte',test_length,0);

% initialize random weights and biases
w2 = rands(hidden_layer_count,400);
w3 = rands(10, hidden_layer_count);
b2 = rands(hidden_layer_count, 1);
b3 = rands(10,1);

train_nn