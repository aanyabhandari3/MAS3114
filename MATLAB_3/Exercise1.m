function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    % vvvvv COMMENT OUT BEFORE SUBMITTING vvvvv %
    %{
    n = randi([2500, 5000]);
    A = randi([-7,7], n, n);
    b = randi([-7,7], n, 1);

    tic
        A\b;
    toc;

    tic
        inv(A) * b;
    toc;
    %}
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %

    % A\b took 0.908 seconds while inv(A)*b took 3.123 seconds to compute.
    % Therefore, A\b computes faster and is also more accurate because it
    % is a least-squares solution. A\b in general uses left matrix division
    % and returns the value of X that satisfies the linear equation Ax = b
    % even if the x value is infintely small or the matrix is a nonsquare matrix. Thus any value after 10^-8
    % value is considered equivalent to 0. It also returns a more specific
    % value compared to inv(A)*b as it does not face rounding errors.
  

    % (ii) Some more practical things...
    A = [1,2,3;4,5,6;-7,-8,-9];
    rref_A = rref(A);

    % A is not invertible because rref_A is not representative of a 3x3
    % identity matrix because it has a row of all zeroes and has numbers
    % other than 0 or 1 in the matrix.
    % Therefore, the determinant of A is 0.

    det_A = det(A);
    %disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = det(transpose(A));

    % det(A) = det(A^T) due to the determinant transpose property.
    % When A is not invertible, A transpose is also not invertible since
    % the determinants of A and A tranpose are equal to each other and the
    % determinant for A will always be 0 when it is not invertible making
    % the determinant of A tranpose also 0 and thus, not invertible.

    % --- Part B [10 Points] --- %
    A1 = [0,1,4;1,3,3;3,7,5];
    b1 = [-4;-2;6];

    sol_1_partic = ParticularSolution(A1,b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule3x3(A1,b1);

    % The system is consistent because both the particular solution file
    % and the cramers rule 3x3 file did not return NaN, 0, or an empty set.
    % This indicates that the matrix is not singular and the determinant is
    % not 0. In fact, because the determinant of the original matrix is not
    % 0, the system is consistent with a unique solution.
    % The solution for the matrix is x1 = 19, x2 = -8, x3 = 1

    % --- Part C [10 Points] --- %
    A2 = [0,2,4;1,3,3;3,7,5];
    b2 = [-4;-2;6];

    sol_2_partic = ParticularSolution(A2,b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule3x3(A2,b2);

    % The system is not consistent. This is because all three methods
    % returned as an empty set, NaN, or 0. When making an rref for A2,
    % the last column has a pivot. This indicates that the determinant of 
    % the matrix is in fact 0, causing it to be not invertible and singular.
    % inconsistent, no solution

    % --- Part D [10 Points] --- %
    A3 = [0,2,4;1,3,3;3,7,5];
    b3 =  [-4;-2;-2];

    sol_3_partic = ParticularSolution(A3,b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule3x3(A3,b3);

    % The system is consistent because the particular solution file and A\b
    % did not return an empty set or 0. The cramers rule 3x3 file did
    % return NaN however. This indicates that the matrix is not singular
    % and the determinant is 0. In fact, because the determinant of the 
    % original matrix is 0, the system is consistent with a infinite solutions.
    % x = [4;-2;0] + [3;-2;1]*t, t in R
end

