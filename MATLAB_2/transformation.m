function [transform_type, name, ufid] = transformation(A)
    % Purpose: This function determines the type of linear transformation
    % of matrix A.
    % Input Argument [A]: an mxn matrix A
    % Output Argument [transform_type]: text indicating linear
    % transformation

    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    % Use dependence.m as a guide to write this new function. Enter code below.

    if rank_A == m && rank_A == n
        transform_type = both;
    elseif rank_A == m && rank_A < n
        transform_type = onto;
    elseif rank_A < m && rank_A == n
        transform_type = one_to_one;
    else
        transform_type = neither;
    end

end
