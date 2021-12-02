exec gausskij3b.sci

n = 4;            // size of the problem
A = zeros(n,n) ;  // zero the matrix
x = zeros(n,1);
// random values on lower Upper matrix and b  (0 - 1)
for i = [1:n]
    for j = [1:n]
           A(i,j) = rand();
    end
end
for i = [1:n]
    x(i) =  rand();
end
b = A*x ; 

x_gauss = gausskij3b(A, b) ; 

err_av = norm(x_gauss - x) / norm(x);
err_arr = norm(b-A*x_gauss)/(norm(A)*norm(x));
cond_A = cond(A);

disp("A : ");
disp(A);
disp("b : ");
disp(b);

disp("x : ");
disp(x);
disp("x_gauss : ");
disp(x_gauss);

disp("Erreur avant : ");
disp(err_av);
disp("Erreur arriere : ");
disp(err_arr);
disp("cond : ");
disp(cond_A) ; 

