function z = nnlineq1(c_vector, beta, sigma, y1, y2, r)

c1 = c_vector(1);
c2 = c_vector(2);

z1 = c1^(-sigma) - beta*(1+r)* (c2^(-sigma));
z2 = c1 + c2/(1+r) - y1 - y2/(1+r); 

z = [z1;z2];

if c1<=0 || c2 <=0
    z(1) = 1e100;
end
