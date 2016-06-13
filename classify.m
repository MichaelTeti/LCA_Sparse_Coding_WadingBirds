function c=classify()
load h.mat
X=heronpatches;
load IbisDic.mat;
l=pool(X, D);
clear D;
i=l
load HeronDic.mat;
l=pool(X, D);
h=l

if i>h
    disp('Heron')
else
    disp('Ibis')
end 
y=[1/i 1/h];
subplot(1, 2, 1)
bar(y);
xlabel('Bird Species');
set(gca, 'XTickLabel', {'Ibis', 'Heron'});
subplot(1, 2, 2)
imshow(imread('heron.jpg'))

end 
