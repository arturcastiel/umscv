function [ out ] = normError( vec1,vec2,ind)
%normError Calculate norm ind of the error
%   Detailed explanation goes here
%   INPUT : vec1 - approx solution
%           vec2 - accurate solution
%           ind - scale of the error
%   OUTPUT: norm of the error
    if ind == inf
        out = max(abs(vec1-vec2))*100;
    else
        out = abs((norm(vec1-vec2,ind)))/norm(vec2,ind)*100;
    end
end

