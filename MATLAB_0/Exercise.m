function [name, ufid, u, v, w, x, A, A_11, A_23, A2, A3, B, B2, B3, ...
          b, aug, rref_Ab1, rref_Ab2, pivcols, compare] = Exercise()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Extra Credit [5 Points] --- %
    % * Vectors *
    u = [1 3 5 7]; % u is the row vector with entries 1,3,5,7 
    v = [1; 3; 5; 7]; % v is the column vector and a semicolon creates a new row
    w = 1:7; % a row vector with first number as intial value and last number as terminal value
    x = 1:2:7; % a row vector with first number as intial value, last number as terminal value, and middle number as step size
    
    % * Matrices *
    % Enter entries manually
    A = [1 2 3; 4 5 6]; 
    A_11 = A(1,1); % A(1,1) returns the (1,1) entry of A
    A_23 = A(2,3); % A(2,3) returns the (2,3) entry of A
    A2 = A(2,:); % A(2, :) returns the second row of A
    A3 = A(:,3); % A(:,3) returns the third column of A
    
    % Randomly generated matrices
    B = randi([-10,10],6,4); % B is a 6x4 matrix with random integer entry from -10 to 10
    B2 = B(2:5,2:4); % B2 is a 4x3 submatrix of B from row 2 to 5 and column 2 to 4
    B3 = B([2 5], 2:4); % B3 is a 2x3 submatrix of B with row 2 and 5 and columns 2 to 4 of matrix B
    
    % * Solving Systems *
    % Solve Ax=b using RREF
    b = [1; 2];
    aug = [A b]; % augmented matrix of the system x = b
    rref_Ab1 = rref([A b]); % rref_Ab1 is the reduced row echelon form of augmented matrix
    [rref_Ab2, pivcols] = rref([A b]); % rref_Ab2 is the reduced row echelon form of augmented matrix, pivcols lists the pivot columns in the rref
    
    % Solve Ax=b by comparing the ranks
    compare = rank_comp(A,[A b]); % The system is consistent since rank(A) = rank([A b])
end
