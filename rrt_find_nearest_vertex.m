function [QNear] = rrt_find_nearest_vertex(QRand, G)
%RRT_FIND_NEAREST_VERTEX find the nearest vertexes from RRT to q_random
%   Input: q_random, G(RRT)
%   Output: q_nearest
if size(QRand, 2) == 2
    Distance = G - QRand;
    Distance = Distance(:,1).^2+Distance(:,2).^2;
    [MinValue, MinPosition] = min(Distance);
    if size(G,1) == 1
        QNear = G;
    else
        QNear = [G(MinPosition,1) G(MinPosition,2)];
    end
elseif size(QRand, 2) == 3
else
    disp('Wrong dimension!');
end
end

