%% Introduction to Engineering Research-ME41125
% FitBit Data-Set Study by Akhil Chadha (5223121)
% The following Matlab code has been created on MatlabR2018b and is only to
% be used for this course (ME41125) at TU Delft.
%%
clc;
clear;
%% Initialising Data-Set
[num,string,data]=xlsread('Data_analysis_Data_IER.csv'); %Importing Data-Set, If the name of the file isn't this then kindly change it to Data_analysis_Data_IER.csv from Data_IER.csv
for i=1:193
    if num(i,2)==2019
        data_2019(i,:)=num(i,:); %Separating Data for 2019
    else
        data_2020(i,:)=num(i,:); %Separating Data for 2020
    end
end
data_2020=data_2020(95:end,:); %Removing Empty Rows
j=1;
k=1;
%Separating Data-Set into Groups Based on Living Conditions
for i=1:94 %Loop for Moved Out in 2019
    if string(i+1,5)=="Moved_out"
        data_2019_moved(j,:)=data_2019(i,:);
        j=j+1;
    else
        data_2019_living(k,:)=data_2019(i,:);
        k=k+1;
    end
end
m=1;
n=1;
for i=1:99 %Loop for Moved Out in 2020
    if string(i+95,5)=="Moved_out"
        data_2020_moved(m,:)=data_2020(i,:);
        m=m+1;
    else
        data_2020_living(n,:)=data_2020(i,:);
        n=n+1;
    end
end
%% Average and Maximum of Data
%Average of App Data and Putting NaN=0
data_2019_mo_1=data_2019_moved(:,[29:35]);
data_2019_mo_1=mean(data_2019_mo_1,2);
data_2019_mo_1(isnan(data_2019_mo_1))=0;
data_2020_mo_1=data_2020_moved(:,[29:35]);
data_2020_mo_1=mean(data_2020_mo_1,2);
data_2020_mo_1(isnan(data_2020_mo_1))=0;
data_2019_li_1=data_2019_living(:,[29:35]);
data_2019_li_1=mean(data_2019_li_1,2);
data_2019_li_1(isnan(data_2019_li_1))=0;
data_2020_li_1=data_2020_living(:,[29:35]);
data_2020_li_1=mean(data_2020_li_1,2);
data_2020_li_1(isnan(data_2020_li_1))=0;

%Average of Omron Data and Putting NaN=0
data_2019_mo_2=data_2019_moved(:,[43 47 51 55 59 63 67]);
data_2019_mo_2=mean(data_2019_mo_2,2);
data_2019_mo_2(isnan(data_2019_mo_2))=0;
data_2020_mo_2=data_2020_moved(:,[43 47 51 55 59 63 67]);
data_2020_mo_2=mean(data_2020_mo_2,2);
data_2020_mo_2(isnan(data_2020_mo_2))=0;
data_2019_li_2=data_2019_living(:,[43 47 51 55 59 63 67]);
data_2019_li_2=mean(data_2019_li_2,2);
data_2019_li_2(isnan(data_2019_li_2))=0;
data_2020_li_2=data_2020_living(:,[43 47 51 55 59 63 67]);
data_2020_li_2=mean(data_2020_li_2,2);
data_2020_li_2(isnan(data_2020_li_2))=0;

%Maximum of App/Omron Data
data_2019_mo=max(data_2019_mo_1,data_2019_mo_2);
data_2020_mo=max(data_2020_mo_1,data_2020_mo_2);
data_2019_li=max(data_2019_li_1,data_2019_li_2);
data_2020_li=max(data_2020_li_1,data_2020_li_2);
%% Unpaired T-Test

%Calculating Mean and SD of Different Living Condition Data-Sets
moved_2019=mean(data_2019_mo);
std_mo_2019=std(data_2019_mo);
moved_2020=mean(data_2020_mo);
std_mo_2020=std(data_2020_mo);
living_2019=mean(data_2019_li);
std_li_2019=std(data_2019_li);
living_2020=mean(data_2020_li);
std_li_2020=std(data_2020_li);

[h1,p1,ci1,stats1]=ttest2(data_2019_mo,data_2020_mo); %Unpaired T-Test for Moved Out
[h2,p2,ci2,stats2]=ttest2(data_2019_li,data_2020_li); %Unpaired T-Test for Living with Parents
%% Plots for Number of Steps Taken
figure(1)
plot(data_2019_mo)
hold on
plot(data_2020_mo)
hold off
legend('2019','2020')
xlabel('Participants')
ylabel('Number of Steps Taken')
title('Moved Out')

figure(2)
plot(data_2019_li)
hold on
plot(data_2020_li)
hold off
legend('2019','2020')
xlabel('Participants')
ylabel('Number of Steps Taken')
title('Living with Parents')
%% IPAQ Score Evaluation
%Removing NaN values
data_2019_moved(isnan(data_2019_moved))=0;
data_2020_moved(isnan(data_2020_moved))=0;
data_2019_living(isnan(data_2019_living))=0;
data_2020_living(isnan(data_2020_living))=0;

%Calculating Mean of Before and After IPAQ Scores
ipaq_before_mo_2019=mean(data_2019_moved(:,19));
ipaq_before_mo_2020=mean(data_2020_moved(:,19));
ipaq_before_living_2019=mean(data_2019_living(:,19));
ipaq_before_living_2020=mean(data_2020_living(:,19));

ipaq_after_mo_2019=mean(data_2019_moved(:,94));
ipaq_after_mo_2020=mean(data_2020_moved(:,94));
ipaq_after_living_2019=mean(data_2019_living(:,94));
ipaq_after_living_2020=mean(data_2020_living(:,94));
%% Plots for IPAQ Score Evaluation
figure(3)
subplot(2,1,1)
plot(data_2019_moved(:,94))
hold on
plot(data_2020_moved(:,94))
hold off
legend('2019','2020')
xlabel('Participants')
ylabel('IPAQ Score Values')
title('Moved Out')

subplot(2,1,2)
plot(data_2019_living(:,94))
hold on
plot(data_2020_living(:,94))
hold off
legend('2019','2020')
xlabel('Participants')
ylabel('IPAQ Score Values')
title('Living with Parents')