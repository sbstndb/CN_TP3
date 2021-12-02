
size_n = [3,10, 100, 1000];
n = 4;
err_av = zeros(1,n);
err_arr = zeros(1,n);
cond_A = zeros(1,n);
for i = [1:n]
    N = size_n(i);
    A =  rand(N,N);
    x = rand(N,1);
    b = A * x ;
    x_solved = A\b;
    err_av(1,i) = norm(x_solved - x)/norm(x);
    err_arr(1,i) = norm(b - A * x_solved) / (norm(A) * norm(x));
    cond_A(1, i) = cond(A);
end    
disp("N : ");
disp(size_n);
disp("erreur avant : ");
disp(err_av);
disp("erreur arriere : ");
disp(err_arr); 
disp("Cond : ");
disp(cond_A); 


