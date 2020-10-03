function [Ray] = bresenham_plot_line_low(X0, Y0, X1, Y1)
%BRESENHAM_PLOT_LINE_LOW Bresenham plot line function when dy/dx < 1
%   Input: x0, y0, x1, y1
%   Output: Ray
DelX = X1 - X0;
DelY = Y1 - Y0;
YIdx = 1;
if DelY < 0
    YIdx = -1;
    DelY = -DelY;
end
D = (2*DelY) - DelX;
Y = Y0;
Ray = [X0 Y0];
for X = X0:1:X1
    if X ~= X0
        Ray = [Ray; X Y];
    end
    if D > 0
        Y = Y + YIdx;
        D = D+(2*(DelY-DelX));
    else
        D = D+(2*DelY);
    end
end
end

