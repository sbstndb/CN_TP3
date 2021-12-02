%%%% Exercice 6 : 
x = [1 1 1 1] 
y = [1; 1; 1; 1] 
z = x + y 
s = x*y 
sx = size(x)
sy = size(y)
norm_x = norm(x, 2)
A = [1 2 3 ; 1 4 7 ; 1 7 9;  0 0 0]
B = [1 1 1 ; 1 3 6 ; 6 2 4;  1 1 1]
transpose_A = A' 
sum_AB = A + B 
dotproduct_AB = dot(A, B)
cond_A  = cond(A)

