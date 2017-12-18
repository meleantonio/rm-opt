%% Solve Example 1 (optimization)

%% PARAMETERS

sigma = 2;
y = 1;

%% Solve example
c = fmincon('obj_ex1',y/2,[],[],[],[],0,y,[], optimset('Display','iter'), sigma);

%% Display results

c
