function [y_hat, z, name, ufid] = proj(y, u)
    % Purpose: to find the orthogonal projection of y onto u and the 
    % component of y orthogonal to u.
    % Input Argument [y]: vector y
    % Input Argument [u]: vector u
    % Output Argument [y_hat]: the projection of y onto u
    % Output Argument [z]: component of y orthogonal to u

    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    dot_yu = dot(y, u);
    dot_uu = dot(u, u);
    y_hat = (dot_yu / dot_uu) * u;
    z = y - y_hat;
end
