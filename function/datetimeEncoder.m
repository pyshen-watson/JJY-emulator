function [en_M, en_H, en_D, en_Y, en_W] = datetimeEncoder(DT)
    
    [Y, D, W, H, M] = datetimeToInt(DT);
    
    en_M = weightize(M, [40 20 10 60 8 4 2 1]);
    en_H = weightize(H, [20 10 24 8 4 2 1]);
    en_D = weightize(D, [200 100 400 80 40 20 10 400 8 4 2 1]);
    en_Y = weightize(Y, [80 40 20 10 8 4 2 1]);
    en_W = weightize(W, [4 2 1]);
end
