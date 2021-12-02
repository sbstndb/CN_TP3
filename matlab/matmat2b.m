function [C] = matmat2b(A,B)
    [n1, nn] = size(A);
    [nn, n2] = size(B);
    C = zeros(n1,n2);
    for i = [1:n1]
        for j=[1:n2]
        C(i,j)=C(i,j)+A(i,:)*B(:,j);
        end 
    end
end