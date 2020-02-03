%Ethan Green
%February 3rd, 2020
function t = ODUpdate(OD,key)
%Updates the OD vector for usage in the ODPlot function
%Takes input OD, the matrix of all absorbance readings; and key, the name
%of all samples
ODnew = zeros(length(key),1);
for i = 1:length(key)
    ODnew(i) = input("What was the absorbance reading for sample "+key{i}+"?");
end
OD = [OD,ODnew];
assignin('base','OD',OD);
end