function [V, name, ufid] = gramm_schmidt(X, normalize)
    % Purpose: to demonstrate the gramm-schmidt orthogonalization process
    % and to create a method for creating an orthonormal basis from an 
    % orthogonal basis 
    % Input Argument [X]: matrix X
    % Input Argument [normalize = false]: default parameter
    % Output Argument [V]: matrix V whose columns represent a basis for
    % W and are orthogonal if argument is false and orthonormal if argument
    % is true

    % --- Name & UFID --- %
    name = "Aanya Bhandari";
    ufid = 59283254;

    if nargin < 2
        normalize = false; % Don't normalize by default
    end

    [n, p] = size(X);
    V = zeros(n, p);

    % (CODE BELOW)
    for i = 1:p
        v_i = X(:,i);
        for j = 1:i-1
            u_j = V(:,j);
            y_hat = proj(v_i,u_j);
            v_i = v_i - y_hat;
        end
        if normalize && norm(v_i) ~= 0
            v_i = v_i / norm(v_i);
        end
        V(:, i) = v_i;
    end
end
