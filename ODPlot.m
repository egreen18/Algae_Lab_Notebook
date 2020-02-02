function ODPlot(t,OD,n)
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
    
        