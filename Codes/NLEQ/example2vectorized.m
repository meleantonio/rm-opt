%% Solve Example 2 (non linear equations) with vectorization

%% PARAMETERS

r = 0.05;
sigma = 2;
y1 = 1;
y2 = 1;
beta = .99;
s0_vector = 1:.1:5;



% allocate memory
c_vector = zeros(2*length(s0_vector),1); % NOTICE: this is column vector

%% Solve the system of equations


c_vector = fsolve('nnlineq2vectorized',c_vector + .5*(y1+y2), optimset('Display','iter'), beta, sigma, y1, y2, r, s0_vector);

c_vector = reshape(c_vector, length(s0_vector),2)';

%% Display solution

c_vector

plot(s0_vector, c_vector(1,:), 'r', s0_vector, c_vector(2,:),'b');
legend('c_1', 'c_2'); xlabel('s_0');