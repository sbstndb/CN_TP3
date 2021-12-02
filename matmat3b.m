function [C] = matmat3b(A,B)
    [n1, n2] = size(A);
    [nn, n3] = size(B) ; 
    C = zeros(n1,n2);
    for i = [1:n1]
        for j = [1:n2]
            for k = [1:n2]
                C(i,j) = C(i,j) +  A(i,k) * B(k,j) ; 
            end
        end
    end
end