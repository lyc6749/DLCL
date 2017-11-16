load('C:\Users\Administrator\Desktop\LDPC\vote_yale_200_0.12.mat');
load('C:\Users\Administrator\Desktop\LDPC\yale_count.mat');
count=0;
scores=zeros(1000001,1);
fals=zeros(1000001,1);
score=0;
acc=zeros(1000001,1);
for s = 1 : 1000001
    co=1;
    count=0;
    fal=0;
    for i=1:38
        n=imageNum(i,1);
        for j=1:n  
           a=vote(co,i);
               if (a>=score)
                 count=count+1;
               end       
           for k=1:38
               if(k~=i)
                   b=vote(co,k);
                    if (b>=score)
                        fal=fal+1;
                    end
               end
           end
           co=co+1;
        end  
    end
    acc(s,1)=count/2034;
    frr=fal/(2034*37);
    fals(s,1)=frr;
    scores(s,1)=score;
    score=score+0.000001;
end

