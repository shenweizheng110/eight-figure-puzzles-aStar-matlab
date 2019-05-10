function f = startFind(depth,currentStatus,notNum)
    global open close targetStatus operation;
    fprintf('depth: %d\n',depth);
    fprintf('notLocation: %d',notNum);
    currentStatus
    if currentStatus == targetStatus
        return
    end
    if isempty(open) && ~isempty(close)
        return
    end
    [zeroRow,zeroCol] = findZero(currentStatus);
    [row,col] = size(currentStatus);
    % 上下左右移动
    for i = 1:4
        if (zeroRow + operation(i).row >= 1) && (zeroRow + operation(i).row <= row) && (zeroCol + operation(i).col >= 1) && (zeroCol + operation(i).col <= col)
            zero.row = zeroRow;
            zero.col = zeroCol;
            status = wrapLocation(zero,currentStatus,i);
            flag = isExist(status);
            len = length(open);
            if ~flag
                open(len + 1).status = status;
                open(len + 1).depth = depth + 1;
                open(len + 1).notNum = notLocation(status);
                open(len + 1).fn = depth + 1 + notLocation(status);
            end
        end
    end
    % open表排序
    [seedNew,index] = sort([open.fn]);
    temp = open(index);
    open = temp;
    closeLen = length(close);
    close(closeLen + 1).status = currentStatus;
    firstItem = open(1);
    open(1) = [];
    startFind(firstItem.depth,firstItem.status,firstItem.notNum)
end