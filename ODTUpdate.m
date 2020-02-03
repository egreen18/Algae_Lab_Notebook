function t = ODTUpdate(ti,t)
tn = input("What time were the readings taken? [hour, minute, month, day, year]");
tnstring = {num2str(tn(1)), num2str(tn(2)), num2str(tn(3)), num2str(tn(4)), num2str(tn(5))};
tistring = {num2str(ti(1)), num2str(ti(2)), num2str(ti(3)), num2str(ti(4)), num2str(ti(5))};
d = '-';
s = {' '};
c = ':';
tndate = strcat(tnstring{5},d,tnstring{3},d,tnstring{4},s,tnstring{1},c,tnstring{2});
tidate = strcat(tistring{5},d,tistring{3},d,tistring{4},s,tistring{1},c,tistring{2});
Tn = datetime(tndate{1});
Ti = datetime(tidate{1});
dT = Tn - Ti;
l = length(t);
t(l+1) = hours(dT);
end


