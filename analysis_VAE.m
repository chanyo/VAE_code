clear all;
clc;
close all;


data = load('result_VAE.mat');



%mappedX = tsne(data.x_test_encoded, data.y_test,2, [], 30);

% mappedX = fast_tsne(data.x_test_encoded, 2, [], 20,0.5);
% gscatter(mappedX(:,1), mappedX(:,2), data.y_test)


mappedX = fast_tsne(data.x_train_encoded, 2, [], 20,0.5);



figure;
gscatter(mappedX(:,1), mappedX(:,2),  data.y_train)

figure
label = [];
for i=1:length(data.y_train)
    if rem(data.y_train(i),2) == 1
        label(i) = 0;
    else
        label(i) = 1;
    end
end

%gscatter3(mappedX(:,1), mappedX(:,2), mappedX(:,3), label)
gscatter(mappedX(:,1), mappedX(:,2),  label)