exec lsolve.sci
exec usolve.sci


////////// Exercice 3
n = 10;            /// size of the problem
A = zeros(n,n) ;  /// zero the matrix
// random values 
for i = [1:n]
    for j = [1:n]
           A(i,j) = 100 + rand();
    end
end
L = tril(A) ; 
U = L';
x = zeros(n,1);
for i = [1:n]
    x(i) = 100 + rand();
end
bl = L*x ; 
bu = U*x ; 

//show('matlab matrix solving ')
// matrix solving by Matlab  Scilab
xl_sol_matlab = L\bl ; 
xu_sol_matlab = U\bu ; 
//print('custom matrix solving ')
// Matrix solving by lsolve
xl_sol_lsolve = lsolve(L, bl);
xu_sol_usolve = usolve(U, bu);




// verification
bl_sol_matlab = L * xl_sol_matlab;
bu_sol_matlab = U * xu_sol_matlab;

bl_sol_lsolve = L * xl_sol_lsolve;
bu_sol_usolve = U * xu_sol_usolve;

// calcul de l'ecart

err_av_lsolve = norm(xl_sol_lsolve - x) / norm(x);
err_av_usolve = norm(xu_sol_usolve - x) / norm(x);

err_arr_lsolve = norm(bl-L*xl_sol_lsolve)/(norm(L)*norm(xl_sol_lsolve));
err_arr_usolve = norm(bu-U*xu_sol_usolve)/(norm(U)*norm(xu_sol_usolve));

ecart_lsolve= norm(xl_sol_lsolve - xl_sol_matlab) ;
ecart_usolve = norm(xu_sol_usolve - xu_sol_matlab);

////// Exercice 3 : 

//x_gauss = gausskij3b(A,b);
// verification : 
//b_gauss_verif = A * x_gauss ; 

////Exercice 4 : LU 

disp("Matrice A : ")
disp(A)
disp("Matrice U : ")
disp(U)
disp("Matrice L : ")
disp(L)
disp("Vecteur x : ")
disp(x)
disp("Vecteur bu : ")
disp(bu)
disp("Vecteur bl : ")
disp(bl)
disp("Conditionnement A : ")
disp(cond(A))
disp("Conditionnement U : ")
disp(cond(U))
disp("Conditionnement L : ")
disp(cond(L))
disp("solution Ux = bu - usolve")
disp(xu_sol_usolve)
disp("solution Ux = bu - matlab")
disp(xu_sol_matlab)
disp("solution Lx = bl - lsolve")
disp(xl_sol_lsolve)
disp("solution Lx = bl - matlab")
disp(xl_sol_matlab)
// erreur avant
disp("Erreur avant pour usolve : ")
disp(err_av_usolve)
disp("Erreur avant pour lsolve : ")
disp(err_av_lsolve)
// erreur arriere 
disp("Erreur arriere pour usolve : ")
disp(err_arr_usolve)
disp("Erreur arriere pour lsolve : ")
disp(err_arr_lsolve)
disp("ecart usolve - matlab : ")
disp(ecart_usolve)
disp("ecart lsolve - matlab : ")
disp(ecart_lsolve)

