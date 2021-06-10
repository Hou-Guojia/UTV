%ÌÝ¶È
function [ux,uy,U]=gradient(u);
[m,n]=size(u);
%u(i+1,j)
B1=circshift(u,[0,-1]);B1(:,n)=B1(:,n-1);
%u(i-1,j)
B2=circshift(u,[0,1]);B2(:,1)=B2(:,2);
%u(i,j+1)
B3=circshift(u,[-1,0]);B3(m,:)=B3(m-1,:);
%u(i,j-1)
B4=circshift(u,[1,0]);B4(1,:)=B4(2,:);
ux=(B1-B2)./2; uy=(B3-B4)./2;
U=B1+B2+B3+B4;
end

