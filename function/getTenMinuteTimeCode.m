function [timecode] = getTenMinuteTimeCode(Y,M,D,H,MI)

    DT0 = datetime(Y,M,D,H,MI,0); % First datetime
    DT = DT0 + minutes(0:9); % All the datetime in ten minute

    timecode = [];

    for i=1:10

        encode = zeros(1, 60);        
        [en_M, en_H, en_D, en_Y, en_W] = datetimeEncoder(DT(i));

        encode(2:9) = en_M;
        encode(13:19) = en_H;
        encode(23:34) = en_D;
        encode(42:49) = en_Y;
        encode(51:53) = en_W;

        encode(37) = evenParity(en_H);
        encode(38) = evenParity(en_M);
        
        encode([1 10 20 30 40 50 60]) = 2;

        timecode = [timecode encode];
        
    end
    
end