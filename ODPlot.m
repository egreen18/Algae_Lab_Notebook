%Ethan Green
%February 2nd, 2020
function ODPlot(batch)
%Plots OD reading data for any number of concurrent growth samples.
%Takes input batch, the structure of all data for the batch.
plot(batch.t,batch.OD(1,:))
hold on
leg = strings(1,batch.n);
leg(1) = batch.key{1};
if batch.n>1
    for i = 2:batch.n
    plot(batch.t,batch.OD(i,:))
    leg(i) = batch.key{i};
    end
end
    legend(leg)
    xlabel('Time (hours)')
    ylabel('Optical Density (absorbance)')
    title('Optical Density over Time')
    grid on
end
    
        