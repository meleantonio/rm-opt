function [c, ceq] = nnlincon_ex3(c_vector, sigma, y)



ceq(1) = .5*((c_vector(5) - c_vector(4))^2);

c = [];
