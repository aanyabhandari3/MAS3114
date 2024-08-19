function [name, ufid, ...
    A, x0, x1, x2, ...
    sol1, P, D, C1, sol2, ...
    x0_another, sol3, C2, sol4] = Exercise2()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    A = [0.7,0.3,0.1;0.1,0.5,0.1;0.2,0.2,0.8];
    x0 = [0.7;0.1;0.2];

    x1 = A*x0;
    x2 = A*x1;

    % --- Part B (see SolveDiffEq.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % Method 1: Call SolveDiffEq(...)
    sol1 = SolveDiffEq(A,x0);

    % Method 2: Diagonalization (of the Transformation Matrix)
    [P, D] = eigvec(A); % (UNCOMMENT THIS LINE)

    C1 = P \ x0;

    sol2 = P*D^inf*C1;

    % Observe: (DO THEY PRODUCE THE SAME RESULT?) yes
    % Conclude: In the long run, we expect 33% of those surveyed will 
    % drive cars, 17% minivans, and 50% suv. 

    % --- Part D [10 Points] --- %
    x0_another = [0.42;0.15;0.43];

    % Method 1: Call SolveDiffEq(...)
    sol3 = SolveDiffEq(A,x0_another);

    % Method 2: Diagonalization (of the Transformation Matrix)
    C2 = P \ x0_another;

    sol4 = P*D^inf*C2;

    % Comparision: the two different x0 vectors produce the same
    % steady-state vector

    % Theoreom: If A is an nxn regular stochastic matrix and x0 is any
    % initial state vector in Rn, then 
    %(i) lambda_1 = 1 is an eigenvalue of A, and all other eigenvalues
    %abs(lambda_i) < 1
    % (ii) there is a unique steady-state ve3ctor p such that Ap = p
    %(iii) The markov chain {x_k} -> p as k -> infinity

    % Conclusion: In the long run, we expect 33% of those surveyed will 
    % drive cars, 17% minivans, and 50% suv. 
end
