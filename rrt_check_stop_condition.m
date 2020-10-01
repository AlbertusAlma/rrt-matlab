function [StopDecision] = rrt_check_stop_condition(QNew, StopConfiguration, DeltaQ)
%RRT_CHECK_STOP_CONDITION �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
if sqrt((StopConfiguration(1)-QNew(1))^2+(StopConfiguration(2)-QNew(2))^2) < DeltaQ
    StopDecision = 1;
else
    StopDecision = 0;
end
end

