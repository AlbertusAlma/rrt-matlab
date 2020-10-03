function [Map] = rrt_draw_ray(Map, Ray)
%RRT_DRAW_RAY Draw the edge of RRT on Map
%   Input: Map, Ray
%   Output: Map
for Idx = 2:1:size(Ray,1)-1
    Map(Ray(Idx, 1), Ray(Idx, 2)) = 4;
end
Map(Ray(size(Ray,1),1), Ray(size(Ray,1),2)) = 5;
end

