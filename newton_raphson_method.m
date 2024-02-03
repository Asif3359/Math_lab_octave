% formula for newton-raphson method, X(n-1)=Xn-(f(Xn))/(f'(Xn)
clc;
%ingredients:
f = @(x) 2^x - 5*x + 2;
df = @(x) log(2)*(2^x) - 5;
e = 10^-14;
x0 = 0;
n = 10;

%Processing:
if df(x0)~=0
    for i=1 :n
        x1 = x0 - f(x0)/df(x0);
        fprintf('x%d =%.20f\n', i, x1)
        if abs(x1-x0)<e
            break
        end
        if df(x1)==0
            disp('Processing faild for Newton Raphson method');
        end
        x0 = x1;
    end
else
    disp('Processing faild for Newton Raphson method');
end
