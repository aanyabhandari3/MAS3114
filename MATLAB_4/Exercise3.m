function [name, ufid, ...
    u1, u2, v1, v2, v3, ...
    u1_dot_v1, v1_dot_u1, ...
    norm_u1, u1_dot_u1, norm_v1, v1_dot_v1, ...
    LHS1, RHS1, LHS2, RHS2, LHS3, RHS3, ...
    y1, z1, verify_sum1, verify_orthogonal1, ...
    y2, z2, verify_sum2] = Exercise3()
    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    % --- Part A [10 Points] --- %
    u1 = [1;-1;-2;3];
    u2 = [1;0;-3;-1];

    v1 = [4;2;3;1];
    v2 = [-1;0;3;1];
    v3 = [2;0;-6;-2];

    % (i) u1  v1 and v1  u1
    u1_dot_v1 = dot(u1,v1);
    v1_dot_u1 = dot(v1,u1);
    % Property: The dot product/inner products is/are interchangeable. 
    % (FILL IN THE BLANK)

    % (ii) ||u1||, u1  u1 and ||v1||, v1  v1
    norm_u1 = norm(u1);
    u1_dot_u1 = dot(u1,u1);

    norm_v1 = norm(v1);
    v1_dot_v1 = dot(v1,v1);

    % Relation Between Inner Product & Norm: The norm of a vector is 
    % closely related to its dot product with itself. Specifically, the 
    % squared norm of the vector is equal to the dot product of the vector 
    % with itself. This relationship means that the length or magnitude of
    % the vector can be determined by taking the square root of this dot 
    % product. This direct relationship highlights how the dot product with
    % itself encapsulates the geometric length of the vector.

    % (iii) Verify Cauchy-Schwarz Inequality (|u  v| <= ||u|| * ||v||)
    % => u1 & v1
    LHS1 = abs(dot(u1,v1));
    RHS1 = norm(u1)*norm(v1);
    % Observe: (IS LHS1 <= RHS1?) yes

    % => u2 & v2
    LHS2 = abs(dot(u2,v2));
    RHS2 = norm(u2)*norm(v2);
    % Observe: (IS LHS2 <= RHS2?) yes

    % => u2 & v3
    LHS3 = abs(dot(u2,v3));
    RHS3 = norm(u2)*norm(v3);
    % Observe: (IS LHS3 <= RHS3?) yes

    % The Cauchy-Schwarz Inequality is an equality when the vectors are
    % linearly dependent. the "=" holds for the Cauchy-Schwarz inequality
    % when two vectors are linearly dependent.

    % --- Part B (see proj.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % (i) v1 as a linear combination of u1 and u1's orthogonal complement
    [y1, z1] = proj(v1,u1); % (UNCOMMENT THIS LINE)

    verify_sum1 = y1+z1; % (SHOULD BE EQUAL TO v1)
    verify_orthogonal1 = abs(dot(z1,u2)) < 10e-8;

    % (ii) v2 as a linear combination of u2 and u2's orthogonal complement
    [y2, z2] = proj(v2,u2); % (UNCOMMENT THIS LINE)

    verify_sum2 = y2+z2; % (SHOULD BE EQUAL TO v2)

    % z2 is the zero vector because v2 is already the orthogonal component
    % to u2.
end
