function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: Solve the system Ax=b for an mxn matrix A using Cramer's Rule.
    % Input Argument [A]: a nxn coefficient matrix
    % Input Argument [b]: a column vector in R^n
    % Output Argument [x]: a solution to Ax=b (or NaN if A is non square 
    % matrix or close to singular)

    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    [m, n] = size(A); % # of rows and columns of A, respectively

    % Use CramersRule3x3.m as a guide to write this new function.
    if m == n
         if abs(det(A)) <= 10^(-8) % Close to singular (so we can't apply Cramer's rule)
            x = NaN;
         else % Apply Cramer's Rule
             x = zeros(1, n); % Allocate the (row) vector in advance
             for i = 1:n
     
                B = A;
                B(:, i) = b; % A_n(b)
                x(i) = det(B) / det(A);
       
             end
             x = x'; % Transpose to express the solution as a column vector
         end
    else
        x = NaN; %not a square matrix
    end
end
