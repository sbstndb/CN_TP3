exec matmat3b.sci
exec matmat2b.sci
exec matmat1b.sci
/// dimensions identiques 
ech = 6;
power = [1:ech];
time_3 = [];
time_2 = [];
time_1 =[];
time_matlab = [];
N_3 = [];
N_2 = [];
N_1 =[];
N_matlab = [];


tic()
min_time = toc();

for i = power
    if (i < 3)
        incm = 1000 ; 
    elseif (i < 6)
        incm = 100 ; 
    else
        incm = 1;
    end
    n = 2^i;
    disp(i)
    disp(n)
    A = rand(n, n);
    B = rand(n, n);
    C = zeros(n, n-2);
    if (n < 2000)
        tic()
        for inc = [1: incm]
            C_3b = matmat3b(A,B);
        end
        t = toc()/inc;
        time_3 = [time_3, t];
        N_3 = [N_3,n];
    end
    if (n < 2000)
        tic();
        for inc = [1: incm]
            C_2b = matmat2b(A,B);
        end
        t = toc()/inc;
        time_2 = [time_2, t];
        N_2 = [N_2,n];
    end
    
    if (n < 5000)
        tic();
        for inc = [1:incm] ; 
            C_1b = matmat1b(A,B);
        end
        t = toc()/inc;
        time_1 = [time_1, t];
        N_1 = [N_1,n];        
    end

    tic();
    for inc = [1:incm];
        C_matlab = A*B;
    end
    t = toc()/inc;
    time_matlab = [time_matlab, t];
    N_matlab = [N_matlab,n];
end
