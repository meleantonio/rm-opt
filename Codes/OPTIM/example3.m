%% Solve Example 3 (optimization)

%% PARAMETERS
sigma = 2;
y = 100;

% allocate memory
c_vector = zeros(10,1);

% constraints
A = ones(1,10);
B = y;
Aeq = [1 0 2 0 0 0 0 0 0 0];
Beq = 12;
LB = zeros(10,1);
UB = y.*ones(10,1);

% Solve the optimization
c_vector = fmincon('obj_ex3',[y/10].*ones(10,1), A,B,Aeq,Beq,LB,UB, 'nnlincon_ex3', optimset('Display','iter'),sigma, y);

%% Display results
c_vector