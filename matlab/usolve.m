function [x] = usolve(U,b)
    [sx, sy] = size(U);
    x = zeros(sx, 1);
    x(sx) = b(sx)/U(sx, sx);
    for i = [sx-1:-1:1]
       x(i) = (b(i)-U(i,(i+1):sx)*x((i+1):sx))/U(i,i);
    end
end