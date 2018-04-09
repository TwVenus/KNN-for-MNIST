% clear
clc
close all

load data_training.csv
TrainingSample=data_training(:,2:end);
TrainingLabel=data_training(:,1);

load data_testing.csv
TestingSample=data_testing(:,2:end);
TestingLabel=data_testing(:,1);

count = 1;
for i = 10:5:50
    class = knnclassify(TestingSample,TrainingSample,TrainingLabel,i);
    acc(count) = mean(class==TestingLabel);
    count =count + 1;
end




