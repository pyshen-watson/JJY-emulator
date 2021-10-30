function [ret] = evenParity(arr)
    sum = 0;
    for i=1:length(arr)
        sum = sum + arr(i);
    end

    ret = mod(sum, 2);
end