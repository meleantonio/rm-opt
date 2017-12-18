function z = obj_ex3(c_vector, sigma, y)

u = (c_vector.^(1-sigma))./(1-sigma);

z = sum(u);

z = -z; 

