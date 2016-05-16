% Test network
% called in train_nn.m
success = 0;
for img_num = 1:test_length
    % forward propagate
    % create activation neurons for layer 1
    pic2 = test_images(:,:,img_num);
    a1t = zeros(400,1);
    for j=0:19 % same for loop structure used in train_nn.m
        for i=1:20
            a1t((j*20)+i,1) = pic2(j+1,i);
        end
    end
    
    % feedforward to layer two
    z2t=w2*a1t+b2;
    a2t=sigmoid(z2t);
    % feedforward to layer three
    z3t=w3*a2t+b3;
    a3t=sigmoid(z3t);
    a3t;
    
    %count successes
    max=0;
    result = -1;
    for m=1:10
        if a3t(m,1)>max
            result=m;
            max = a3t(m,1);
        end
    end
    if result==10
        result=0;
    end
    if result==test_labels(img_num,1)
        success = success + 1;
    end
end
%output successes
fprintf('Epoch %d: %.2f%% correct\n', e,success/100)