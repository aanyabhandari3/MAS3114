function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    A = [1,2,3;4,5,6;-7,-8,-9];
    b = [2;4;6];
    c = [2,-2,2];
    D = [1,2,3,4,5;-5,-4,-3,-2,-1;4,3,2,1,0];
    x1 = A(3,:); % A(3,:) returns the third row of Matrix A
    x2 = D(:,5); % D(:,5) returns the fifth column of Matrix D
    x3 = [A b]; % [A b] returns Matrix A with a fourth column which is Matrix B
    aug = [A;c]; % [A; c] retunrs Matrix A a with fourth row which is Matrix C

    % --- Part B [10 Points] --- %
    x4 = eye(7); % eye(7) returns a 7x7 RREF matrix with a pivot in each row
    x5 = zeros(6,4); % zeros(6,4) returns a 6x4 matrix with only 0s in each row i.e no pivots
    x6 = zeros(6); % zeros(6) returns a 6x6 matrix with only 0s and no pivots
    x7 = ones(5,3); % ones(5,3) returns a 5x3 matrix with just 1 as each value creating all pivots in the first column
    x8 = diag(c); % diag(c) returns a 3x3 REF matrix with Matrix C as the diagonal vector


    % --- Part C [10 Points] --- %
    F1 = randi([-4,8],3,5); % randi([-4,8],3,5) returns a 3x5 matrix with random integers between -4 and 8

    F2 = F1;    % (DO NOT REMOVE) Copy array
    F2(:, [2 5]) = F1(:, [5 2]); % returns Matrix F1 with columns 2 and 5 swapped

    E = [A F2]; % returns Matrix A concatenated with Matrix F2
    [m, n] = size(E); % returns the values of m and n respectively based on the dimensions of Matrix E
    
    E1 = E(:, [3 8]); % returns a 3x2 submatrix of Matrix E with columns 3 and 8
    E2 = E(:, 3:8); % returns a 3x6 submatrix of Matrix E from column 3 to 8
end
