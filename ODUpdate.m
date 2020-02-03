%Ethan Green
%February 3rd, 2020
function ODUpdate(batch)
%Updates the OD vector for usage in the ODPlot function
%Takes input batch, the structure of data from a batch
ODnew = zeros(length(batch.key),1);
for i = 1:length(batch.key)
    ODnew(i) = input("What was the absorbance reading for sample "+batch.key{i}+"?");
end
batch.OD = [batch.OD,ODnew];
assignin('base','batch',batch);
end