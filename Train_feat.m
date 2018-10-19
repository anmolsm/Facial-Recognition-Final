clc;
clear all;
close all;
for i=1:10
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=11-i;  
 W1(l,1:16) = W(1,1:16);
        
end

for i=11:20
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=21-i;  
 W2(l,1:16) = W(1,1:16);
        
end

for i=21:30
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=31-i;  
 W3(l,1:16) = W(1,1:16);
        
end
for i=31:40
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=41-i;  
 W4(l,1:16) = W(1,1:16);
        
end
for i=41:50
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=51-i;  
 W5(l,1:16) = W(1,1:16);
        
end
for i=51:60
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=61-i;  
 W6(l,1:16) = W(1,1:16);
        
end
for i=61:70
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=71-i;  
 W7(l,1:16) = W(1,1:16);
        
end
for i=71:80
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=81-i;  
 W8(l,1:16) = W(1,1:16);
        
end
for i=81:90
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=91-i;  
 W9(l,1:16) = W(1,1:16);
        
end
for i=91:100
i
    img=imread(['data1\',num2str(i),'.bmp']);
V = orl_data(img);
rdim = 1;

showflag=0;
[H,W] = nnmf( V, rdim,  showflag );
W=W';
l=101-i;  
 W10(l,1:16) = W(1,1:16);
        
end

train_dataset={W1 W2 W3 W4 W5 W6 W7 W8 W9 W10};
l1='S1';
l2='S2';
l3='S3';
l4='S4';
l5='S5';
l6='S6';
l7='S7';
l8='S8';
l9='S9';
l10='S10';

classes = { l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 };

save master1.mat train_dataset classes   ;




