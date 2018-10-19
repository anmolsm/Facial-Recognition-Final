function test_code_identify(i)

load  master1.mat;

class1=train_dataset{1,1};
class2=train_dataset{1,2};
class3=train_dataset{1,3};
class4=train_dataset{1,4};
class5=train_dataset{1,5};
class6=train_dataset{1,6};
class7=train_dataset{1,7};
class8=train_dataset{1,8};
class9=train_dataset{1,9};
class10=train_dataset{1,10};






c1_test=class1(10:10,:);
c2_test=class2(10:10,:);
c3_test=class3(10:10,:);
c4_test=class4(10:10,:);
c5_test=class5(10:10,:);
c6_test=class6(10:10,:);
c7_test=class7(10:10,:);
c8_test=class8(10:10,:);
c9_test=class9(10:10,:);
c10_test=class10(10:10,:);



tot_train= [class1;class2;class3;class4;class5;class6;class7;class8;class9;class10];
tot_test=[c1_test;c2_test;c3_test;c4_test;c5_test;c6_test;c7_test;c8_test;c9_test;c10_test];

new_class=[1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6 6 6 7 7 7 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 8 8 9 9 9 9 9 9 9 9 9 9 10 10 10 10 10 10 10 10 10 10];

test = i;

[itrfin]=svm1(tot_train,new_class,test)

if (itrfin==1)
    fprintf('\n\nthis face belongs to ::S1:: class\n\n\n');
    
    msgbox ( '::S1::');
       disp ( '::S1::');

elseif(itrfin==2)
    fprintf('\n\nthis face belongs to ::S2:: class\n\n\n');
       
     msgbox ( '::S2::');
          disp ( '::S2::');

    elseif(itrfin==3)
        fprintf('\n\nthis face belongs to ::S3:: class\n\n\n');
           
          msgbox ( '::S3::');
                    disp( '::S3::');

      elseif(itrfin==4)
        fprintf('\n\nthis face belongs to ::S4:: class\n\n\n');
           
          msgbox ( '::S4::');
                    disp( '::S4::');
                     elseif(itrfin==5)
        fprintf('\n\nthis face belongs to ::S5:: class\n\n\n');
           
          msgbox ( '::S5::');
                    disp( '::S5::');
                     elseif(itrfin==6)
        fprintf('\n\nthis face belongs to ::S6:: class\n\n\n');
           
          msgbox ( '::S6::');
                    disp( '::S6::');
                     elseif(itrfin==7)
        fprintf('\n\nthis face belongs to ::S7:: class\n\n\n');
           
          msgbox ( '::S7::');
                    disp( '::S7::');
                     elseif(itrfin==8)
        fprintf('\n\nthis face belongs to ::S8:: class\n\n\n');
           
          msgbox ( '::S8::');
                    disp( '::S8::');
                     elseif(itrfin==9)
        fprintf('\n\nthis face belongs to ::S9:: class\n\n\n');
           
          msgbox ( '::S9::');
                    disp( '::S9::');
                     elseif(itrfin==10)
        fprintf('\n\nthis face belongs to ::S10:: class\n\n\n');
           
          msgbox ( '::S10::');
                    disp( '::S10::');

            
                 
         end
