function [zeroRow,zeroCol] = findZero(currentStatus)
    [row,col] = size(currentStatus);
    for i = 1:row
        for j = 1:col
            if currentStatus(i,j) == 0
                zeroRow = i;
                zeroCol = j;
            end
        end
    end
end