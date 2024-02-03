clc;

f = @(x) x^2 - 2^x - 3;
a = -4;
b = 4;

epsilon = 0.0001;
iteration = 0;
fprintf('It\t\tFc\t\tRoot \n');
while (b - a) >= epsilon
    fa = f(a);
    fb = f(b);
    c = a - (fa * (b - a) / (fb - fa));

    fc = f(c);

    if abs(fc) < epsilon
        break;
    end

    if sign(fc) == sign(fa)
        a = c;
    else
        b = c;
    end

    iteration = iteration + 1;
    fprintf(' %d:  \t  %.06f  \t %f\n', iteration, fc, (a + b) / 2);
end

root = (a + b) / 2;

fprintf('Approximate root: %f\n', root);
fprintf('Number of iterations: %d\n', iteration);

