%% Solve Example 2 (non linear equations) with a for loop

%% PARAMETERS

r = 0.05;
sigma = 2;
y1 = 1;
y2 = 1;
beta = .99;
s0_vector = 1:.1:5;


%% LOOP

% allocate memory
c_vector = zeros(2,length(s0_vector));

for i=1:length(s0_vector)
    s0 = s0_vector(i);

%% Solve the system of equations


c_vector(:,i) = fsolve('nnlineq2',[y1/2; y2/2], optimset('Display','iter'), beta, sigma, y1, y2, r, s0);
end

%% Display solution

c_vector

plot(s0_vector, c_vector(1,:), 'r', s0_vector, c_vector(2,:),'b');
legend('c_1', 'c_2'); xlabel('s_0');