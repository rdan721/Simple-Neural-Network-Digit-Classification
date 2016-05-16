function m = sigmoid(x)
    m = (1+exp(-x)).^(-1);
end