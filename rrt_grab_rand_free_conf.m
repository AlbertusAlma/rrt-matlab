function [QRand] = rrt_grab_rand_free_conf(Map)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
if size(size(Map),2) == 2
    while 1
        QRand = [randi(size(Map,1)), randi(size(Map,2))]
        if Map(QRand(1), QRand(2)) == 0
            break
        end
    end
elseif size(size(Map),2) == 3
    while 1
        QRand = [randi(size(Map,1)), randi(size(Map,2)), randi(size(Map,3))];
        if Map(QRand(1), QRand(2), QRand(3)) == 0
            break
        end
    end
else
    disp('Wrong dimension!');
end
end
