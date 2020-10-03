function [] = rrt_main(Dimension, Approach)
%RRT_MAIN The main function of rrt-matlab
%   Input: Dimension, Approach
%   Output: void

close all;

if Dimension == 2
    % Variables initialization stage
    Size = [300 1000];
    StartConfiguration = [1 1];
    StopConfiguration = [200 970];
    Obstacles = [50 50 80 80; 15 20 30 45;1 500 145 600; 150 500 300 600; 
                100 100 300 200];
    G = [StartConfiguration];
    DeltaQ = 12;
    Map = rrt_generate_map(Dimension, Size, StartConfiguration, StopConfiguration, Obstacles);
    
    switch Approach
        case 'RRT'
            while 1
                QRand = rrt_grab_rand_free_conf(Map);
                QNear = rrt_find_nearest_vertex(QRand, G);
                QNew = rrt_select_new_conf(QNear, QRand, DeltaQ, Map);
                [Ray, ColDecision] = rrt_check_no_collision_on_ray(QNew, QNear, Map);
                if ColDecision == 1
                    Map = rrt_draw_ray(Map, Ray);
                    G = [G; QNew];
                    pause(0.01);
                    Img = imagesc(Map);
                    StopDecision = rrt_check_stop_condition(QNew, StopConfiguration, DeltaQ);
                    if StopDecision == 1
                        QNear = rrt_find_nearest_vertex(StopConfiguration, G);
                        QNew = StopConfiguration;
                        [Ray, TempColDecision] = rrt_check_no_collision_on_ray(QNew, QNear, Map);
                        Map = rrt_draw_ray(Map, Ray);
                        G = [G; QNew];
                        imagesc(Map);
                        break;
                    end
                else
                end
            end
        otherwise
            disp('Wrong approach!');
    end
    
elseif Dimension == 3
    
else
    disp('Wrong dimension!');
end
end

