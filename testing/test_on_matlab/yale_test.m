clc,clear,close all;
testPath=strcat('/home/dataset/testYale_1_T/');
rows=64;
cols=64;
dm=4000;
r=zeros(rows,cols);
g=zeros(rows,cols);
b=zeros(rows,cols);
label=zeros(1,dm);
Fal=zeros(37,1);
fal=zeros(37,1);
preLabel=zeros(130176,dm);
preOut=zeros(130176,dm);
pre=1;
True=0;
net=int_net(1);
for i = 1 : 38
    testPath1=strcat(testPath,'yaleB',num2str(i),'/');
    path=strcat(testPath1,'*.jpg');
    filesub=dir(path);
    num=length(filesub);
    n=fix(num/64);
    for i1 = 1 : n
        m1=i1*64;
        m=m1-64+1;
        for i2 = m : m1
            path1=strcat(testPath1,num2str(i2),'.jpg');
            im=imread(path1);
            r=double(im);
            g=double(im);
            b=double(im);
            im1=cat(3,r,g,b);
            im1=uint8(im1);
            scores=predict(im1,net);
            for i3 = 1 : dm
                preOut(pre,i3)=scores(i3,1);
%                 if(scores(i3,1)>0.5)
%                     label(1,i3)=1;
%                 else
%                     label(1,i3)=0;
%                 end
            end
%             preLabel(pre,:)=label(1,:);
            pre=pre+1;
        end
    end
end
 caffe.reset_all();

