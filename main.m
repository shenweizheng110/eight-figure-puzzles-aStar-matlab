function res = main()
    clear();
    clc();
    global initStatus targetStatus open close operation;
    initStatus = [2 8 3;1 6 4;0 7 5];
    targetStatus = [1 2 3;8 0 4;7 6 5];
    open = [];
    close = [];
    operation = [];
    operation(1).row = -1;
    operation(1).col = 0;
    operation(2).row = 1;
    operation(2).col = 0;
    operation(3).row = 0;
    operation(3).col = -1;
    operation(4).row = 0;
    operation(4).col = 1;
    startFind(0,initStatus,notLocation(initStatus));
end