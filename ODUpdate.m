%Ethan Green
%February 3rd, 2020
function batch = ODUpdate(batch)
%Updates the OD matrix for usage in the ODPlot function.
%Takes input batch, the structure of all data from the batch.
ODnew = zeros(length(batch.key),1);
for i = 1:length(batch.key)
    ODnew(i) = input("What was the absorbance reading for sample "+batch.key{i}+"?");
end
clear ans
batch.OD = [batch.OD,ODnew];
end