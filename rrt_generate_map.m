function [Map] = rrt_generate_map(Dimension, Size, StartConfiguration, StopConfiguration, Obstacles)
%UNTITLED Generate 2D or 3D dimensional map with starting
%configuration, stop configuration, and obstacles.
%   Input: dimension(2D/3D), starting configuration, stop configuration,
%   obstacles.
%   output: Map(0: space, 1: starting configuration, 2: stop configuration, 3:
%   obstacles)
if Dimension == 2
    Map=zeros(Size(1), Size(2));
    Map(StartConfiguration(1), StartConfiguration(2)) = 1;
    Map(StopConfiguration(1), StopConfiguration(2)) = 2;
    for Idx1 = 1:1:size(Obstacles,1)
        for Idx2 = Obstacles(Idx1,1):1:Obstacles(Idx1,3)
            for Idx3 = Obstacles(Idx1,2):1:Obstacles(Idx1,4)
                Map(Idx2, Idx3) = 3;
            end
        end
    end
    disp('2D map generated.');
elseif Dimension == 3
    Map=zeros(Size(1), Size(2), Size(3));
    Map(StartConfiguration(1), StartConfiguration(2), StartConfiguration(3)) = 1;
    Map(StopConfiguration(1), StopConfiguration(2), StopConfiguration(3)) = 2;
    for Idx1 = 1:1:size(Obstacles,1)
        for Idx2 = Obstacles(Idx1,1):1:Obstacles(Idx1,4)
            for Idx3 = Obstacles(Idx1,2):1:Obstacles(Idx1,5)
                for Idx4 = Obstacles(Idx1,3):1:Obstacles(Idx1,6)
                Map(Idx2, Idx3, idx4) = 3;
                end
            end
        end
    end
    disp('3D map generated.');
else
    disp('Wrong dimension!');
end
end

