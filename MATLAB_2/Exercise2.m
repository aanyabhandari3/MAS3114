function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    transform_A1 = transformation(A1);
    transform_A2 = transformation(A2);
    transform_A3 = transformation(A3);

    transform_B1 = transformation(B1);
    transform_B2 = transformation(B2);
    transform_B3 = transformation(B3);

    C1 = randi([-4,8],[3,3]);
    C2 = randi([-4,8],[3,3]);
    C3 = randi([-4,8],[3,3]);

    transform_C1 = transformation(C1);
    transform_C2 = transformation(C2);
    transform_C3 = transformation(C3);

    % --- Part C [10 Points] --- %

    % (1) When m < n, a transformation T(x) = Ax cannot be one-to-one. This
    % is because m < n implies that there are less rows than columns
    % meaning that domain which is dependent on R^m has less dimensions
    % than the codomain which is dependent on R^n.

    % (2) When m > n, a transformation T(x) = Ax cannot be onto. This is
    % because m > n implies there are more rows than columns, meaning that
    % the codomain (R^m) cannot be transformed since there are not enough
    % dimensions.

    % (3) When m = n, a transformation T(x) = Ax can be neither onto nor
    % one-to-one. This is because for this to be possible, the matrix would
    % need to be bijective where every vector in the domain has exactly one
    % vector in the codomain and every vector in the codomain has exactly
    % one vector in the domain. But this is not the case for all matrices
    % and thus, an nxn matric can be neither onto nor one-to-one.

    example_neither = [1,1;2,2];
    transform_neither = transformation(example_neither);

    % (4) When m = n, a transformation T(x) = Ax cannot be either onto and not
    % one-to-one or one-to-one and not onto. The definition of an onto
    % function is when every vector in the codomain maps to at least one
    % vector in the domain. And the defintion of a one-to-one function
    % states that every vector in the codomain is mapped to at least one
    % vector in the domain. So, it is not possible for a matrix to satisfy
    % one defintion and not the other.
end

