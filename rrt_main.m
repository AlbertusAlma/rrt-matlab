clear all;
close all;

Dimension = 2;
Size = [300 1000];
StartConfiguration = [1 1];
StopConfiguration = [200 970];
Obstacles = [50 50 80 80; 15 20 30 45];
G = [StartConfiguration];

DeltaQ = 12;

Map = rrt_generate_map(Dimension, Size, StartConfiguration, StopConfiguration, Obstacles);
while 1
    QRand = rrt_grab_rand_free_conf(Map);
    QNear = rrt_find_nearest_vertex(QRand, G);
    QNew = rrt_select_new_conf(QNear, QRand, DeltaQ, Map);
    [Ray, ColDecision] = rrt_check_no_collision_on_ray(QNew, QNear, Map);
    if ColDecision == 1
        Map = rrt_draw_ray(Map, Ray);
        G = [G; QNew];
        imagesc(Map);
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