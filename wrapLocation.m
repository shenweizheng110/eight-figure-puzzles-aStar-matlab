function status = wrapLocation(zero,currentStatus,type)
    status = currentStatus;
    switch type
        case 1 
            status(zero.row,zero.col) = currentStatus(zero.row - 1,zero.col);
            status(zero.row - 1,zero.col) = 0;
        case 2
            status(zero.row,zero.col) = currentStatus(zero.row + 1,zero.col);
            status(zero.row + 1,zero.col) = 0;
        case 3
            status(zero.row,zero.col) = currentStatus(zero.row,zero.col - 1);
            status(zero.row,zero.col - 1) = 0;
        case 4
            status(zero.row,zero.col) = currentStatus(zero.row,zero.col + 1);
            status(zero.row,zero.col + 1) = 0;
    end
end