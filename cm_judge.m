function [flag] = cm_judge(eVx,eVy,eff_addr)
%flag=1����ʾ��ǰ֡������˶�
%flag=0����ʾ��ǰ֡�������ֹ
%V = sqrt(eVx.^2 + eVy.^2);
V =eVx.^2 + eVy.^2;
T = length(find(V <=2));
eff_num = length(eff_addr);
if T > 0.5*eff_num
    flag = 0;
else
    flag = 1;
end

