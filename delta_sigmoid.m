function m = delta_sigmoid(x)
     m = sigmoid(x).*(1-sigmoid(x));
end