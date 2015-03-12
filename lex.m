list  = [0 1 2 3 4 5 6 7 8 9];

n = 9;
answer = zeros(1,10);
total = zeros(1,8);

for j=1:10

    for i = 1:10;

        total(i+1) = total(1) + i*factorial(n);

        if total(i+1)>=167

            total(1) = total(i);
           
            break

        end

    end

    answer(j) = list(i);

    list(i) =[];

    n = n-1;
end

A = num2str(answer);

fprintf('The answer is %s\n',A)