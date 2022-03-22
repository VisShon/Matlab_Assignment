
%Creating two arrays both to hold the conditional values
%of the given probability model.
A=[40 50 60 70];
B=[80 90 100 110];

%Creating two vectors 'X' and 'Y' to hold values for
%creating the bar graph distribution.
X=0:10:110;
Y=[];

%Using for and if-else statement to fill up the vector 'Y'
for i = X
    if ismember(i,A)
        Y(end+1)=0.025;
    elseif ismember(i,B)
        Y(end+1)=0.225;
    else
        Y(end+1)=0;
    end
end

%Plotting the bar graph distribution
bar(X,Y)
xlabel('x')
ylabel('PX(x)')
title('Bar distribution graph')
probability([50 0.2 6 120])

%A function to calculate probabilities.
function probability(Z)

    %Creating two arrays both to hold the conditional values
    %of the given probability model.
    A=[40 50 60 70];
    B=[80 90 100 110];
     
    %using For loop to traverse through the given elements
    %stored in the vector 'Z' and comparing them to 
    %the conditional values stored in the two vectors 'A' and 'B' 
    %using if-else statements to return the probabilities
    for i = Z
        if ismember(i,A)
            fprintf('The probability for %g',i)
            fprintf(' is 0.025. \n')
        elseif ismember(i,B)
            fprintf('The probability for %g',i)
            fprintf(' is 0.225. \n')
        else
            fprintf('The probability for %g',i)
            fprintf(' is 0. \n') 
        end
    end
end
