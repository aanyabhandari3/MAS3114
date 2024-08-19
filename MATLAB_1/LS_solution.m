function [solution_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;
    
    % (PURPOSE OF FUNCTION)
    % n = this is the number of variables in the system
    % A = this is the co-efficient matrix
    % Ab = this is the augmented matrix

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Add your code below

    if rank(A) ~= rank(Ab)
        solution_type = inc
    elseif rank(A) == n
        solution_type= con_with_one_sol
    else
       solution_type =con_with_inf_sols
    end


end
