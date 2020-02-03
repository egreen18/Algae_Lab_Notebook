%Ethan Green
%February 2nd, 2020
function ODPlot(t,OD,n)
%Plots OD reading data for any number of concurrent growth samples
%Takes inputs t, the vector of all OD sample times; OD, the matrix of all
%OD absorbance readings; and n, the number of concurrent growth samples
plot(t,OD(1,:))
hold on
leg = strings(1,n);
leg(1) = 'OD1';
if n>1
    for i = 2:n
    plot(t,OD(i,:))
    int = ['OD',num2str(i)];
    leg(i) = int;
    end
end
    legend(leg)
    xlabel('Time (hours)')
    ylabel('Optical Density (absorbance)')
    title('Optical Density over Time')
    grid on
end
    
        