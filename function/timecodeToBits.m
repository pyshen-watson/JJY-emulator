function [bits] = timecodeToBits(timecode, fs)

    bit_0 = [ones([1 0.8*fs]) zeros([1 0.2*fs])];
    bit_1 = [ones([1 0.5*fs]) zeros([1 0.5*fs])];
    bit_M = [ones([1 0.2*fs]) zeros([1 0.8*fs])];
    bit_list = [bit_0 ; bit_1 ; bit_M];

    bits = [];
    for i=1 : length(timecode)
        bit_component = bit_list(timecode(i) + 1, :);
        bits = [bits bit_component];
    end
end
