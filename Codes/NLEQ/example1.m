%% Solve Example 1 (non linear equations)

%% PARAMETERS
r = 0.05;
sigma = 2;
y1 = 1;
y2 = 1;
beta = .99;

%% Solve the system of equations
[c_vector , value] = fsolve('nnlineq1',[y1/2; y2/2], optimset('Display','iter'), beta, sigma, y1, y2, r);

%% Display solution
c_vector
value