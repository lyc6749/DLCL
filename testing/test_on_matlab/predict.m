function [scores] = predict(im ,net)

tic;
input_data = {prepare_image(im)};
toc;

tic;
scores = net.forward(input_data);
toc;

scores = scores{1};
scores = mean(scores, 2);  % take average scores over 10 crops



