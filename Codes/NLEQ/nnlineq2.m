function z = nnlineq2(c_vector, beta, sigma, y1, y2, r, s0)

% rename variables
c1 = c_vector(1); 
c2 = c_vector(2);

z1 = c1^(-sigma) - beta*(1+r)* (c2^(-sigma)); % Euler equation
z2 = c1 + c2/(1+r) - y1 - y2/(1+r) - s0; % budget constraint

z = [z1;z2];

if c1<=0 || c2 <=0 % if any consumption today or tomorrow is negative
    z(1) = 1e100; % set z(1) to be very different from zero, so the solution is never a negative number
end
