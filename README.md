This code creates a simple neural network that that is trained to classify individual handwritten digits. The neural network and backpropagation algorithm used comes from the online book neuralnetworksanddeeplearning.com

Credit to Siddharth Hegde for the third party function readMNIST, downloaded from http://www.mathworks.com/matlabcentral/fileexchange/27675-read-digits-and-labels-from-mnist-database/content/readMNIST.m

In order to run the program you must first download the files for the MNIST dataset found here: http://yann.lecun.com/exdb/mnist/

In the code the names of the ubyte files have been changed for readability. In order to run the code either the filenames from the website must be changed to the ones used in the code or change the names in the code back to the original names. 

original file names: 
train-images.idx3-ubyte 
train-labels.idx1-ubyte 
t10k-images.idx3-ubyte 
t10k-labels.idx1-ubyte 

file names in the setup.m script:

trainingimages.idx3-ubyte

traininglabels.idx1-ubyte

testimages.idx3-ubyte

testlabels.idx1-ubyte

