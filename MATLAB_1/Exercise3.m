function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-4,8],2,1);
    
    A1 = randi([-4,8],2,3);
    Ab1 = [A1 bA];
    [~, n] = size(A1); % (UNCOMMENT LINE)
    sol1 = LS_solution(n,A1,Ab1);

    A2 = randi([-4,8],2,3);
    Ab2 = [A2 bA];
    [~, n] = size(A2); % (UNCOMMENT LINE)
    sol2 = LS_solution(n,A2,Ab2);

    A3 = randi([-4,8],2,3);
    Ab3 = [A3 bA];
    [~, n] = size(A3); % (UNCOMMENT LINE)
    sol3 = LS_solution(n,A3,Ab3);
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    % An undetermined system mostly has infintely many solutions because 
    % there are fewer equations than unknowns, resulting in more variables than
    % pivots. Consequently, there are free variables leading to infinitely 
    % many solutions.

    % An underdetermined linear system cannot have a unique solution because
    % there are fewer equations than unknowns, which ensures that at least 
    % one variable will remain free (not constrained by a pivot).

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    % (WHEN PROVIDING AN EXAMPLE, IT MUST BE A NON-TRIVIAL EXAMPLE.)
    % (i.e., A MATRIX DOES NOT CONTAIN A ZERO ROW AND DOES NOT HAVE TWO OR MORE IDENTICAL ROWS.)
    example_A1 = [1,1,1;2,2,2];
    example_b1 = [1;3];
    [~, n] = size(example_A1); % (UNCOMMENT IF EXAMPLE)
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]); % (UNCOMMENT IF EXAMPLE)
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-4,8],3,1);

    A4 = randi([-4,8],3,2);
    Ab4 = [A4 bC];
    [~, n] = size(A4); % (UNCOMMENT LINE)
    sol4 = LS_solution(n,A4,Ab4);

    A5 = randi([-4,8],3,1);
    Ab5 = [A5 bC];
    [~, n] = size(A5); % (UNCOMMENT LINE)
    sol5 = LS_solution(n,A5,Ab5);

    A6 = randi([-4,8],3,1);
    Ab6 = [A6 bC];
    [~, n] = size(A6); % (UNCOMMENT LINE)
    sol6 = LS_solution(n,A6,Ab6);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    
    % Most overdetermined linear systems are expected to be inconsistent 
    % because there are more equations than unknowns, leading to an excess 
    % of constraints that cannot all be satisfied simultaneously.This means
    % that not all rows in the augmented matrix can contain pivots,
    % resulting in no solution.

    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW WITH A NONTRIVIAL MATRIX)
    example_A2 = [2,3;4,6;6,12];
    example_b2 = [5;10;15];
    [~, n] = size(example_A2); % (UNCOMMENT)
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]); % (UNCOMMENT)

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW WITH A NONTRIVIAL MATRIX)
    example_A3 = [1,1;3,3;9,9];
    example_b3 = [11;33;99];
    [~, n] = size(example_A3); % (UNCOMMENT IF EXAMPLE)
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]); % (UNCOMMENT)
end
