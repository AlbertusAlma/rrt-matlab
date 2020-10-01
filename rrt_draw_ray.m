function [Map] = rrt_draw_ray(Map, Ray)
%RRT_DRAW_RAY 이 함수의 요약 설명 위치
%   자세한 설명 위치
for Idx = 2:1:size(Ray,1)-1
    Map(Ray(Idx, 1), Ray(Idx, 2)) = 4;
end
Map(Ray(size(Ray,1),1), Ray(size(Ray,1),2)) = 5;
end

