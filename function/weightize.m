function [weight_vector] = weightize(value, weight)
    
    weight_vector = zeros(1, length(weight));

    for i=1:length(weight)
        if value >= weight(i)
            weight_vector(i) = 1;
            value = value - weight(i);
        end
    end
end