clc;

f = @(x) exp(log(x)) - exp(x) + sin(x);
a = -0.5;
b = 0.4;
epsilon = 1e-10;
max_iter = 20;

fprintf('\tIteration \t Approximate Root \n');

if f(a) * f(b) >= 0 || a >= b
    disp('Invalid initial interval [a, b]. The method may not converge.');
end

roots = zeros(1, max_iter); % Initialize an array to store roots

for i = 1:max_iter
    c = (a * f(b) - b * f(a)) / (f(b) - f(a));
    fprintf('\t %d \t\t %f\n', i, c);

    fc = f(c);

    if abs(fc) < epsilon
        roots(i) = c;  % Store the root
        break;
    end

    if f(a) * fc < 0
        b = c;
    elseif f(b) * fc < 0
        a = c;
    end

    roots(i) = c;  % Store the root at each iteration
end

fprintf('Approximate root: %f\n', roots(i));







