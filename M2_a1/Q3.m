%Declaring a variable 'L' for lamda provided in the equation
%array 'X' for holding the array of first 10 natural numbers
%array 'Y' for holding the values of CDF.
X=1:10;
L=3;
Y=[];

%Generating a for loop with if else statements 
%store values of CDF by adding values of exp(-L)/factorial(i)
%which is the possions PMF
%at different levels and storing them back in Y
for i = X
    if i==1
        
        %here i have added 1/exp(1) which is the value of pmf
        %at the index 0 but since my loop is from 1 to 10
        %i have added it seperately.
        Y(i)=(L^i)*exp(-L)/factorial(i)+1/exp(L);
    else
        Y(i)=Y(i-1)+(L^i)*exp(-L)/factorial(i);
    end
        fprintf("CDF of %g",i);
        fprintf(" is = %g",Y(i));
        fprintf('\n');
end

%Plotting the grpah of CDF of first 10 natural numbers using
%the arrays 'X' and 'Y' that we have generated above.
plot(X,Y())
xlabel("variables")
ylabel("CDF")
title("Graph for above distribution")