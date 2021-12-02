function [C] = matmat1b(A,B)
    [n1, nn] = size(A);
    [nn, n2] = size(B);
    C = zeros(n1,n2);  
    for i = [1:n1]
        C(i,:)=A(i,:)*B+C(i,:);
    end
end
