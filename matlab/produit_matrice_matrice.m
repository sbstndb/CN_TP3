%%% dimensions identiques 
ech = 13;
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
        incm = 100000 ; 
    elseif (i < 6)
        incm = 10000 ; 
    else
        incm = 20;
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

loglog(N_3,time_3, '+', color = 'red')
hold on 
loglog(N_2,time_2, '+', color = 'green')
hold on
loglog(N_1,time_1, "+", color = 'blue')
hold on
loglog(N_matlab,time_matlab, "+", color = 'black' )
hold on
loglog(N_3,time_3, color = 'red')
hold on 
loglog(N_2,time_2, color = 'green')
hold on
loglog(N_1,time_1, color = 'blue')
hold on
loglog(N_matlab,time_matlab, color = 'black')
xlabel("size of matrix")
ylabel("time in seconds")
grid()

hold on
legend({"matmat3b", "matmat2b", "matmat1b", "Matlab"})
legend("Location", "northwest")
