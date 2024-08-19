function [name, ufid, ...
    A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
    B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
    example_B, dep_B, example_C, dep_C] = Exercise1()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    % (1) m < n
    A1 = randi([-4,8],[3,5]);
    A2 = randi([-4,8],[3,5]);
    A3 = randi([-4,8],[3,5]);

    dep_A1 = dependence(A1);
    dep_A2 = dependence(A2);
    dep_A3 = dependence(A3);

    % (2) m > n
    B1 = randi([-4,8],[5,3]);
    B2 = randi([-4,8],[5,3]);
    B3 = randi([-4,8],[5,3]);

    dep_B1 = dependence(B1);
    dep_B2 = dependence(B2);
    dep_B3 = dependence(B3);

    % --- Part B [10 Points] --- %
    % A 3x5 matrix is always linearly dpenedent because there are more
    % columns than rows. This means that the rank cannot exceed 3 but that
    % leaves 2 linearly dependent columns making the whole matrix linearly
    % dependent.

    example_B = NaN;
    dep_B = NaN;

    % --- Part C [10 Points] --- %
    % A 5x3 matrix is not always linearly independent. Linear dependency
    % can be checked by seeing if the column vectors are scalar multiples
    % of each other. It is possible for a matrix C to have scalar multiple
    % columns and that can make the matrix linearly dependent.

    example_C = [1,2,3;2,4,6;3,6,9;4,8,12;5,10,15];
    dep_C = dependence(example_C);
end
