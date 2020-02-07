%Ethan Green
%February 3rd, 2020
function BatchUpdate(batch)
%Updates the batch structure and displays using ODPlot.
%Takes input batch, the structure of all data from the batch.
%Initializing
    disp("Updating data from the "+batch.title+" experiment.")
%Updating t vector
    batch = ODTUpdate(batch);
%Updating OD matrix
    batch = ODUpdate(batch);
%Exporting data to workspace
    clear ans
    assignin('base','batch',batch);
%Plotting for visualization of updates
    ODPlot(batch);
end