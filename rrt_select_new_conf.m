function [QNew] = rrt_select_new_conf(QNear, QRand, DeltaQ, Map)
%SELECT_NEW_CONF 이 함수의 요약 설명 위치
%   자세한 설명 위치
Distance = QRand - QNear;
Distance = sqrt(Distance(1)^2 + Distance(2)^2);
X = round(DeltaQ*(QRand(1)-QNear(1))/Distance)+QNear(1);
if X < 1
    X = 1;
elseif X > size(Map, 1)
        X = size(Map, 1);
end    
Y = round(DeltaQ*(QRand(2)-QNear(2))/Distance)+QNear(2);
if Y < 1
    Y = 1;
elseif Y > size(Map, 2)
    Y = size(Map, 2);
end
QNew = [ X Y ];
end

