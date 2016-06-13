function l = pool(X, D)




t=.01;
h=.0001;
d=h/t;
lambda=.01;
u=zeros(size(D, 2), size(X, 2));

for j=1:300
    a=(u-sign(u).*(lambda)).* (abs(u) > (lambda));
    u=u+d*(D'*(X-D*a)-u-a);
end

[a b]=find(a>.1);
l=numel(unique(a));

    
        
end 
