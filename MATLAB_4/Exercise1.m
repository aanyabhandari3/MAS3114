function [name, ufid, ...
    n1, B1, A1, ...
    P1, D1, PDP1, ...
    P1_again, D1_again, PDP_again, ...
    P2, D2, PDP2, P3, D3, PDP3, ...
    A2, P4, D4, verify1_LHS, verify1_RHS, verify2, basis_eigenspace, ...
    A3, P5, D5, dot_A3, ...
    A4, P6, D6] = Exercise1()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    rng(ufid, 'twister') % (DO NOT REMOVE)

    % --- Part A [10 Points] --- %
    % vvv GENERATES RANDI MATRIX WITH DISTINCT EIGENVALUES vvv %
    n1 = 4;
    A1 = [];
    B1 = [];
    while length(unique(diag(A1))) ~= n1
        B1 = randiFullRank([-7, 7], n1);
        A1 = triu(B1); % Returns the upper-triangular part of A1
    end
    % ^^^ DO NOT MODIFY! ^^^ %

    % The eigenvalues of A1 are 3, -1, -6, 5 because the eigenvalues of a
    % triangular matrix A1 are the entries on its main diagonal. since we
    % know A1 is a upper triangle matrix, the eigenvalues are indeed on its
    % diagonal.

    [P1, D1] = eig(A1); % (UNCOMMENT THIS LINE)

    % P1 is an invertible matrix with columns that are linearly independent
    % eigenvectors corresponding to each eigenvalue in the corresponding
    % column of D1 so Col 1 in P1 is the eigenvector associated with the
    % eigenvalue in Col 1 in D1
    % D1 is the diagonal matrix with the eigenvalues on its diagonal

    PDP1 = P1*D1*inv(P1);

    [P1_again, D1_again] = eigvec(A1); % (UNCOMMENT THIS LINE)
    PDP_again = P1_again*D1_again*inv(P1_again);

    % We can conlude that A1 is diagonalizeable
    % since the diagonalization theorem states that an nxn matrix A1 is
    % diagonalizable if and only if A1 has n linearly independent
    % eigenvectors. Since A1 has 4 linearly independent eigenvectors, it is
    % diagonalizable. Plus it satisfies the equation A1 = P1*D1*inv(P1).

    % (i) First distinct diagonalization
    P2 = P1; % (DO NOT REMOVE)
    D2 = D1; % (DO NOT REMOVE)

    % MODIFY P2 & D2 HERE
    P2 = 3*P2;
    D2 = D2;

    PDP2 = P2*D2*inv(P2);

    % (ii) Second distinct diagonalization
    P3 = P1; % (DO NOT REMOVE)
    D3 = D1; % (DO NOT REMOVE)

    % MODIFY P3 & D3 HERE
    P3 = fliplr(P3)
    D3 = fliplr(flipud(D3));

    PDP3 = P3*D3*inv(P3);

    % --- Part B [10 Points] --- %
    A2 = [-3,1,0,0;0,-3,1,0;0,0,-3,1;0,0,0,-3];

    [P4, D4] = eig(A2); % (UNCOMMENT THIS LINE)

    verify1_LHS = A2*P4;
    verify1_RHS = P4*D4;
    verify2 = P4*D4*inv(P4);

    % Observe: The program demonstrated that LHS = RHS however, verify2
    % failed to obtain the original A2. This is because A2 is not
    % diagonalizable and thus A2 = P4*D4*inv(P4) does not hold true.
    % Furthermore, P might not be invertible even if it satisfies LHS = RHS
    % and thus this statement cannot be used to prove A = P*D*inv(P)

    basis_eigenspace = NulBasis(A2+3*eye(4));

    % A2 is not diagonalizable because...
    % (i) the dimension of the eigenspace for each lambda k does not equal
    % the multiplicity of lambda k
    % (ii) it does not satisfy the equation A = P*D*inv(P) where the
    % columns of P are linearly independent eigenvectors of A

    % --- Part C [10 Points] --- %
    A3 = [6,-1;-1,6];

    [P5, D5] = eigvec(A3); % (UNCOMMENT THIS LINE)
    dot_A3 = dot(P5(:,1),P5(:,2));

    % The eigenvectors of A3 are orthogonal. (FILL IN THE BLANK)

    % Solution: x(t) = C_1*e^(7t)[-1;1] + C_2*e^(5t)[1;1]

    % --- Part D [10 Points] --- %
    A4 = [3,-1,-1;-1,3,-1;-1,-1,3];

    [P6, D6] = eigvec(A4); % (UNCOMMENT THIS LINE)

    % A4 is diagonalizable because it has 3 linearly independent
    % eignevectors and the multiplicity of each eigenvalue is equal to the
    % dimension of the its corresponding eigenspace 

    % Solution: x(t) = C_1*e^(4t)[-1;1;0] + C_2*e^(4t)[-1;0;1] +
    % C_3*e^(t)[1;1;1]
end
