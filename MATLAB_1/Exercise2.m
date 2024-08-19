function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    [B, pivcols]=rref([A b]); % (WRITE COMMAND BEFORE SEMI-COLON)
    % returns an augmented, RREF Matrix B with the column number where the
    % pivots occur

    % The system is not consistent because there is a pivot in the last
    % column

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, B);
    % Rouche-Capelli theorem
    
    % returns that the rank of A and rank of [A b] is not the same which
    % indicates that the system is not consistent. This is the same answer
    % we got in part A.
   
    % --- Part C [10 Points] --- %
    [m, n] = size(B); % returns matrix dimensions
    solution_type = LS_solution(n,A,B);
end
