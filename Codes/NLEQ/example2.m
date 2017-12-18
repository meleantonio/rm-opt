%% Solve Example 2 (non linear equations) for one value of s0

%% PARAMETERS

r = 0.05;
sigma = 2;
y1 = 1;
y2 = 1;
beta = .99;
s0 = 2;

%% Solve the system of equations

c_vector = fsolve('nnlineq2',[y1/2; y2/2], optimset('Display','iter'), beta, sigma, y1, y2, r, s0);

%% Display solution

c_vector