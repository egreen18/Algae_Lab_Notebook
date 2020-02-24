OD = log(batch.OD(:,1:13));
t = batch.t(1:13);
poly20 = polyfit(t,OD(1,:),3);
poly10 = polyfit(t,OD(2,:),3);
poly5 = polyfit(t,OD(3,:),3);
polyfun = @(poly,t) poly(1)*t.^3 + poly(2)*t.^2 + poly(3)*t + poly(4);
color20 = [38, 64, 39]/225;
color10 = [60, 82, 51]/255;
color5 = [140, 174, 104]/255;
plot(t,polyfun(poly20,t),'Color',color20,'LineWidth',3);
hold on
grid on
plot(t,polyfun(poly10,t),'Color',color10,'LineWidth',3);
plot(t,polyfun(poly5,t),'Color',color5,'LineWidth',3);
scatter(t,OD(1,:),[],color20);
scatter(t,OD(2,:),[],color10);
scatter(t,OD(3,:),[],color5);
title('Growth of Algae over Time')
xlabel('Time in Hours')
ylabel('Log of Optical Absorbance')
legend('20% inoculant','10% inoculant','5% inoculant')