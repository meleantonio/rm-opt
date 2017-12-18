function z = obj_ex2(c_vector, beta, sigma, y1, y2, r, s0)

c1 = c_vector(1);
c2 = c_vector(2);

z = (c1^(1-sigma))/(1-sigma) + beta*(c2^(1-sigma))/(1-sigma);

z = -z; 

