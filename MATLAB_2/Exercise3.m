function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    %The output for both A1 and A2 is the same.

    % For-Loop (i) = n(n-1) FLOPs
    % For-Loop (ii) = n^2(n-1) FLOPs

    % For-Loop (i) requires less FLOPs

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A3(i,j) = i + j;
            j = j + 1;
        end
        i = i + 1;
    end


    % (REWRITE FOR-LOOP (i) USING WHILE LOOPS HERE)

    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = i;
        while j <= n
            A4(i,j) = i + j;
            A4(j,i) = A4(i,j);
            j = j + 1;
        end
        i = i + 1;
    end

    % (REWRITE FOR-LOOP (ii) USING WHILE LOOPS HERE)

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-4,8],[n,n-2]);

    ABBA = A*B;
    % A*B works because the number of columns in the first matrix match the
    % number of rows in the second matrix. This is not the case when B*A is
    % set to ABBA.

    C = randi([-4,8],[n,n]);

    AC = A*C;
    CA = C*A;
    % AC and CA are not equal to each other because in matrix multiplication
    % the new matrix is calculated by dot product and that dot product
    % changes when the order of the matrices being multiplied changes.
    % Aside: Matrix multiplication is function composition.

    AI = A*eye(n);
    IA = eye(n)*A;
    % AI and IA are equal to each other because multiplying a matrix by the
    % identity matrix on either side leaves the original matrix unchanged, 
    % which is a fundamental property of the identity matrix.
    % Hint: I_n, the identity matrix, has some special property.

    % --- Part D [10 Points] --- %
    inverse_A = inv(A);
    % Yes, matrix A is invertible because the determinant of A is not equal
    % to 0. However, the warning indicates that while the determinant is
    % not equal to 0, it is very close so its inverse values may not be
    % accurate.

    D = [1,-1,2;0,0,1;1,3,-2];
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = rref([D eye(size(D))]);
    rref_inverse_D = rref_something(1:3, 4:6);

    inv_inv_D = inv(inv(D));
    % yes the inverse of the inverse of D is equal to D. this is because
    % when the inverse of the inverse is taken, the same steps are done in
    % reverse and they amount to the starting matrix which in this case is
    % D.

    E = [1,0,2;2,-1,5;-1,1,-1];

    inverse_DE = inv(D*E);
    inv_D_inv_E = inv(D)*inv(E);
    inv_E_inv_D = inv(E)*inv(D);
    % The inverse of the product of two invertible matrices D and E is
    % equal to the inverse of the second matrix (E) times the inverse of
    % the first matrix (D).

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    % The inverse of the transpose of an invertible matrix D is equal to
    % transpose of the inverse of matrix D.
end
