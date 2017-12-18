function z = nnlineq2vectorized(c_vector, beta, sigma, y1, y2, r, s0_vector)

c_vector = reshape(c_vector, length(s0_vector),2);
c1 = c_vector(:,1);
c2 = c_vector(:,2);

z1 = c1.^(-sigma) - beta.*(1+r).* (c2.^(-sigma));
z2 = c1 + c2./(1+r) - y1 - y2/(1+r) - s0_vector'; 

z = [z1;z2];

if any(c1<=0) || any(c2 <=0)
    z(1) = 1e100;
end
