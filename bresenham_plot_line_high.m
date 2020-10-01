function [Ray] = bresenham_plot_line_high(X0, Y0, X1, Y1)
%BRESENHAM_PLOT_LINE_LOW 이 함수의 요약 설명 위치
%   자세한 설명 위치
DelX = X1 - X0;
DelY = Y1 - Y0;
XIdx = 1;
if DelX < 0
    XIdx = -1;
    DelX = -DelX;
end
D = (2*DelX) - DelY;
X = X0;
Ray = [X0 Y0];
for Y = Y0:1:Y1
    if Y ~= Y0
        Ray = [Ray; X Y];
    end
    if D > 0
        X = X + XIdx;
        D = D+(2*(DelX-DelY));
    else
        D = D+(2*DelX);
    end
end
end

