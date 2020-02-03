%Ethan Green
%February 2nd, 2020
function ODPlot(t,OD,n,key)
%Plots OD reading data for any number of concurrent growth samples
%Takes inputs t, the vector of all OD sample times; OD, the matrix of all
%OD absorbance readings; n, the number of concurrent growth samples, and
%key, the cell of all sample names
plot(t,OD(1,:))
hold on
leg = strings(1,n);
leg(1) = key{1};
if n>1
    for i = 2:n
    plot(t,OD(i,:))
    leg(i) = key{i};
    end
end
    legend(leg)
    xlabel('Time (hours)')
    ylabel('Optical Density (absorbance)')
    title('Optical Density over Time')
    grid on
end
    
        