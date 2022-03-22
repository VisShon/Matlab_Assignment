%Defining the values of 'p' and 'q' 
%as defined in the question.
p=9/10;
q=1-p;
y=100;

%Initializing Ez for storing expected value 
%and Y for holding CDF
Ez=0;
Y=[];

%Calculating the expected value 
%using summision with the help of for loop
%by adding the values of Ez=ΣZ*PZ(z)=Σ(1/2^i)*p*q^(i-1);
for i = 1:99
    if i==1
       Ez = (1/2^i)*p*q^(i-1);
       Y(i) = p*(q^(i-1));
    else
       Ez = Ez + (1/2^i)*p*q^(i-1);
       Y(i) = Y(i-1) + p*(q^(i-1));
    end
    
end

%Adding the values at 100 for displaying Ez and CDF 
Ez = Ez + (1/2^y)*q^(y-1);
Y(end+1) =Y(99) + q^(y-1);

%Displaying Ez and plotting stairwise graph for CDf
X=1:100;
display(Ez)
stairs(X,Y);
xlabel("Variables");
ylabel("CDF")
title('CDF Sairwise graph')
