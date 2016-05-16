% called in setup_nn.m
% This script can be run multiple times after setup has been run to
% continue training the network beyond the original set number of epochs
for e = 1:epochs
    for img_num = 1:train_length

        % forward propogate
        % create activation neurons for layer 1
        pic = train_images(:,:,img_num);
        a1 = zeros(400,1);
        for j=0:19 % the 20x20 matr. is converted to 400x1 matrix, reading 
            for i=1:20 % the 20x20 from left to right then top to bottom it
                a1((j*20)+i,1) = pic(j+1,i); % corresponds to reading top
            end                        % down through the 400x1 matrix pic1
        end

        % feedforward to layer two
        z2=w2*a1+b2;
        a2=sigmoid(z2);
        % feedforward to layer three
        z3=w3*a2+b3;
        a3=sigmoid(z3);
        
        % Backpropogate 
        % first create desired output y
        y = zeros(10,1);
        % set element corresponding to correct label to 1
        if train_labels(img_num,1) ~= 0
            y(train_labels(img_num,1),1)=1;
        else
            y(10,1)= 1; % the tenth position will represent 0
        end
            
        % calculate errors d3 and d2 (layers 3 and 2 respectively)
        d3 = (a3 - y).*delta_sigmoid(z3);
        d2 = (transpose(w3)*d3).*delta_sigmoid(z2);

        % calculate costs of weights and biases for layer 3 and 2
        bcost3 = d3;
        bcost2 = d2;
        wcost3 = d3*transpose(a2);
        wcost2 = d2*transpose(a1);
        
        % apply gradient descent
        w3 = w3 - learn_rate*wcost3;
        w2 = w2 - learn_rate*wcost2;
        b3 = b3 - learn_rate*bcost3;
        b2 = b2 - learn_rate*bcost2;        
    end

    test_nn
end
