In my attmepts to understand neural networks I had a hard time finding simple examples since most coding languages already have libraries which can make it difficult to see what is going on behind the scenes. So I went ahead and made my own, which is mostly from-scratch (see credits). The MATLAB code creates a simple neural network and then trains it to classify individual handwritten digits. With the right parameters it can accurately classified up to 97% of the handwritten digits in the MNIST dataset linked below.

The backpropagation algorithm used comes from the online book at www.neuralnetworksanddeeplearning.com

Further Credit to Siddharth Hegde for the third party function readMNIST, downloaded from http://www.mathworks.com/matlabcentral/fileexchange/27675-read-digits-and-labels-from-mnist-database/content/readMNIST.m

In order to run the program you must first download the files for the MNIST dataset found here: http://yann.lecun.com/exdb/mnist/

In the code the names of the ubyte files have been changed for readability. In order to run the code either the filenames from the website must be changed to the ones used in the code or change the names in the code back to the original names. 

original file names:
* train-images.idx3-ubyte
* train-labels.idx1-ubyte
* t10k-images.idx3-ubyte
* t10k-labels.idx1-ubyte 

file names in the setup.m script: 
* trainingimages.idx3-ubyte
* traininglabels.idx1-ubyte
* testimages.idx3-ubyte
* testlabels.idx1-ubyte

