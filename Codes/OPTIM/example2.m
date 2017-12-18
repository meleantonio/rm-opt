%% Solve Example 2 (optimization)

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
    
    % constraints
        A = [1 1/(1+r)];
    B = [ y1+ y2/(1+r) + s0];
    LB = [0;0];
    UB = [ y1+ y2/(1+r) + s0;  y1+ y2/(1+r) + s0];
    
    % Solve the optimization
    c_vector(:,i)= fmincon('obj_ex2',[y1/2; y2/2],A,B,[],[],LB,UB,[], optimset('Display','iter'), beta, sigma, y1, y2, r, s0);
       
end


%% Display results

plot(s0_vector, c_vector(1,:), 'r', s0_vector, c_vector(2,:),'b');
legend('c_1', 'c_2'); xlabel('s_0');