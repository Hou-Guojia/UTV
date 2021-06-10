 function a=divergence(ux,uy)
[m,n]=size(ux);
%u(i+1)
c1=circshift(ux,[0,-1]);c1(:,n)=c1(:,n-1);
c2=circshift(ux,[0,1]);c2(:,1)=c2(:,2);
c3=circshift(uy,[1,0]);c3(1,:)=c3(2,:);
c4=circshift(uy,[-1,0]);c4(m,:)=c4(m-1,:);
a=(c1-c2)./2+(c3-c4)./2;
 end