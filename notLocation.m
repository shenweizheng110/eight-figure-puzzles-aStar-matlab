% 计算不在位的数量
function num = notLocation(currentStatus)
    global targetStatus;
    [row,col] = size(currentStatus);
    len = row * col;
    num = 0;
    for i = 1:len
        if currentStatus(i) ~= targetStatus(i)
            num = num + 1;
        end
    end
end