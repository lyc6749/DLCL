load('E:\database\YaleLabel\labelLDPC_100_200.mat');
load('C:\Users\Administrator\Desktop\LDPC\preLabel_yale_200_0.12.mat');
count=1;
co=1;
ff=64;
vote=zeros(2034,38);
imageNum=zeros(38,1);
testPath=strcat('E:\database\testYale_1_T\');
for i=1:38
    testPath1=strcat(testPath,'yaleB',num2str(i),'\');
    path=strcat(testPath1,'*.jpg');
    filesub=dir(path);
    num=length(filesub);
    n=fix(num/ff);
    imageNum(i,1)=n;
    for j=1:n  
        m=j*ff;
        m1=m-ff+1;
        for k=m1:m
            label=preLabel(count,:);
            count=count+1;
            for u = 1 : 38
                  b=isequal(labelLDPC(u,:),label(1,:));
                  if(b==1)
                     vote(co,u)=vote(co,u)+1;
                  end
            end
        end
        co=co+1;
    end  
end
vote=vote/ff;