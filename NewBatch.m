%Ethan Green
%February 7th, 2020
function NewBatch
%Fills workspace with the properly formatted batch data based off of user
%input
%% Sample naming and description
    batch.n = input("How many samples were inoculated?");
    batch.key = cell(1,batch.n);
    for i = 1:batch.n
        batch.key{i} = input("What is the name of sample "+i+"?");
    end
    batch.abs = input("Briefly describe the batch goal.");
    batch.title = input("What is the title of this batch?");
%% Initial Time
    tn = input("What time were initial the readings taken? [hour, minute, month, day, year]");
    tnstring = {num2str(tn(1)), num2str(tn(2)), num2str(tn(3)), num2str(tn(4)), num2str(tn(5))};
    d = '-';
    s = {' '};
    c = ':';
    tndate = strcat(tnstring{5},d,tnstring{3},d,tnstring{4},s,tnstring{1},c,tnstring{2});
    batch.ti = datetime(tndate{1});
    batch.t = [0];
%% First data set
    batch.OD = zeros(length(batch.key),1);
    for j = 1:length(batch.key)
        batch.OD(j) = input("What was the first absorbance reading for sample "+batch.key{j}+"?");
    end
%% Exporting created batch file
    assignin('base','batch',batch);
end
