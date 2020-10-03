function [Ray, ColDecision] = rrt_check_no_collision_on_ray(QNew, QNear, Map)
%RRT_CHECK_NO_COLLISION_ON_RAY get pixels consist of the edge from Bresenham method and check
%whether the edge causes collision
%   Input: q_new, q_nearest, map
%   Output: ray, collision_decision
if QNew(1) == QNear(1)
    Ray = [QNear(1) QNear(2)];
    if QNew(2) > QNear(2)
        for Idx = QNear(2):1:QNew(2)
            Ray = [Ray; QNew(1) Idx];
        end
    else
        for Idx = QNear(2):-1:QNew(2)
            Ray = [Ray; QNew(1) Idx];
        end
    end
elseif QNew(2) == QNear(2)
    Ray = [QNear(1) QNear(2)];
    if QNew(1) > QNear(1)
        for Idx = QNear(1):1:QNew(1)
            Ray = [Ray; Idx QNew(2)];
        end
    else
        for Idx = QNear(1):-1:QNew(1)
            Ray = [Ray; Idx QNew(2)];
        end
    end
else
    if abs(QNew(2)-QNear(2)) < abs(QNew(1)-QNear(1))
        if QNear(1) > QNew(1)
            Ray = bresenham_plot_line_low(QNew(1), QNew(2), QNear(1), QNear(2));
        else
            Ray = bresenham_plot_line_low(QNear(1), QNear(2), QNew(1), QNew(2));
        end
    else
        if QNear(2) > QNew(2)
            Ray = bresenham_plot_line_high(QNew(1), QNew(2), QNear(1), QNear(2));
        else
            Ray = bresenham_plot_line_high(QNear(1), QNear(2), QNew(1), QNew(2));
        end
    end
end
ColDecision = 1;
for Idx = 2:1:size(Ray,1)
    if Map(Ray(Idx,1), Ray(Idx,2)) ~= 0
        ColDecision = 0;
        break;
    end
end
end
