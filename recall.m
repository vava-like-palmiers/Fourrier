function [Y] = recall(data, label)
    Y=zeros(size(data, 1),1);
    elemTrouves = 0;
    
    for i=1:size(data, 1)
        if strcmp(data(i,1),label)
            elemTrouves = elemTrouves + 1;
        end
        Y(i) = (elemTrouves / i);
    end
        
end