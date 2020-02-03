%Ethan Green
%February 2nd, 2020
function batch = ODTUpdate(batch)
%Updates the t vector for usage in the ODPlot function.
%Takes input batch, the structure of all data for the batch.
tn = input("What time were the readings taken? [hour, minute, month, day, year]");
tnstring = {num2str(tn(1)), num2str(tn(2)), num2str(tn(3)), num2str(tn(4)), num2str(tn(5))};
tistring = {num2str(batch.ti(1)), num2str(batch.ti(2)), num2str(batch.ti(3)), num2str(batch.ti(4)), num2str(batch.ti(5))};
d = '-';
s = {' '};
c = ':';
tndate = strcat(tnstring{5},d,tnstring{3},d,tnstring{4},s,tnstring{1},c,tnstring{2});
tidate = strcat(tistring{5},d,tistring{3},d,tistring{4},s,tistring{1},c,tistring{2});
Tn = datetime(tndate{1});
Ti = datetime(tidate{1});
dT = Tn - Ti;
l = length(batch.t);
batch.t(l+1) = hours(dT);
end


