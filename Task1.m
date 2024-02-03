clc;

population = @(x) A * 2.^x .* (1 + B * cos(2 * pi * C * x)) .* exp(-D * x);

% Function representing firefly population dynamics
A = 1000;  % Initial population under ideal conditions
B = 0.2;   % Amplitude of cyclic fluctuations
C = 0.1;   % Frequency of cyclic fluctuations
D = 0.01;  % Decay rate

x = 0:0.1:10;

% Call the function
population_result = population(x);

% Display a portion of the result
disp(population_result(1:10));

% Plot the results
plot(x, population_result);
xlabel('Time');
ylabel('Firefly Population');
title('Firefly Population Dynamics');






