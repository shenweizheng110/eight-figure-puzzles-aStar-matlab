function flag = isExist(currentStatus)
    global open close;
    temp = false;
    if ~isempty(open)
        for i = 1:length(open)
            open(i).status;
            if currentStatus == open(i).status
                temp = true;
                break;
            end
        end
    end
    if ~isempty(close)
        for i = 1:length(close)
            if currentStatus == close(i).status
                temp = true;
                break;
            end
        end
    end
    flag = temp;
end