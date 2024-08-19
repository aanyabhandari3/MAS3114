function [name, ufid, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise2()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A (see CramersRule.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % (i) m > n
    A1 = randi([-4,8],6,4);
    b1 = randi([-4,8],6,1);

    sol_1_partic = ParticularSolution(A1,b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule(A1,b1);

    % (ii) m < n
    A2 = randi([-4,8],4,6);
    b2 = randi([-4,8],4,1);

    sol_2_partic = ParticularSolution(A2,b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule(A2,b2);

    % (iii) m = n
    A3 = randi([-4,8],6,6);
    b3 = randi([-4,8],6,1);

    sol_3_partic = ParticularSolution(A3,b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule(A3,b3);

    % --- Part C [10 Points] --- %

    % When A is invertible, all three methods return a unique solution x.

    % When Ax = b is consistent where A is an n x n singular matrix,
    % particular solution returns an x value and A\b also returns a y value
    % however, cramer's returns NaN because the matrix is singular.

    % When Ax = b is consistent where A is an m x n (non-square) matrix,
    % the particular solution gives a solution when m<n but returns an
    % empty set when m>n. A\b gives the least-squares solution and cramer's
    % rule returns NaN.
end
