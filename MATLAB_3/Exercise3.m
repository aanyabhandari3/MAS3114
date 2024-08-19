function [name, ufid, ...
    N1, B1, pivcols1, C1, R1, ...
    N2, B2, pivcols2, C2, R2, ...
    N3, B3, pivcols3, C3, R3, ...
    A4, N4, B4, pivcols4, C4, R4, ...
    rank_A1, rank_A2, rank_A3, rank_A4] = Exercise3(A1, A2, A3)
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    % (i) Compute a basis for the nullspace, columnspace, and rowspace of A1.
    N1 = null(A1);
    [B1, pivcols1] = rref(A1); % (UNCOMMENT)
    C1 = A1(:,pivcols1);
    R1 = A1(1:rank(A1),:);

    % --- Part B [10 Points] --- %
    % (ii) Compute a basis for the nullspace, columnspace, and rowspace of A2.
    N2 = null(A2);
    [B2, pivcols2] = rref(A2); % (UNCOMMENT)
    C2 = A2(:,pivcols2);
    R2 = A2(1:rank(A2),:);

    % (iii) Compute a basis for the nullspace, columnspace, and rowspace of A3.
    N3 = null(A3);
    [B3, pivcols3] = rref(A3); % (UNCOMMENT)
    C3 = A3(:,pivcols3);
    R3 = A3(1:rank(A3),:);

    % (iv) Compute a basis for the nullspace, columnspace, and rowspace of A4.
    A4 = [1,-5,2,0,-4,0;0,0,0,1,4,0;-1,5,-2,0,0,-6;2,-10,4,-1,-10,3];

    N4 = null(A4);
    [B4, pivcols4] = rref(A4); % (UNCOMMENT)
    C4 = A4(:,pivcols4);
    R4 = A4(1:rank(A4),:);

    % The nullspace of A4 is 6 in R^3.
    % The column space of A4 is 4 in R^3.

    % --- Part C [10 Points] --- %
    % Verify the Rank Theorem for A1, A2, A3, & A4.
    rank_A1 = rank(A1);
    %   i) dim(Col A1) = dim(Row A1) = 4
    %  ii) rank(A1) + dim(Nul A1) = 4 + 0 = 4 = n

    rank_A2 = rank(A2);
    %   i) dim(Col A2) = dim(Row A2) = 4
    %  ii) rank(A2) + dim(Nul A2) = 4 + 2 = 6 = n

    rank_A3 = rank(A3);
    %   i) dim(Col A3) = dim(Row A3) = 6
    %  ii) rank(A3) + dim(Nul A3) = 6 + 0 = 6 = n

    rank_A4 = rank(A4);
    %   i) dim(Col A4) = dim(Row A4) = 3
    %  ii) rank(A4) + dim(Nul A4) = 3 + 0 = 3 = n

    % [EC, +5 pts] (See instructions.)
    %
    % (a) What is dim Nul A? What about dim Col A?
    %
    %     dim Nul A = 5
    %     dim Col A = 30 - 5 = 25
    %
    % (b) Can you be certain that every non-homogenous system Ax = b has
    %     a solution? Why or why not (provide valid reasoning/proof)?
    % every non-homogeneous system 

    %     Yes, we can be certain that every non-homogenous system Ax = b
    %     has a solution because dim Col A = 25 which is the same dimension
    %     as the column space R^25.
end
