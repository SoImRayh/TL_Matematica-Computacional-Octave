function [xs, ys, i] = NewtonRaphson(f, df ,x , maxIteracoes, tolerancia)
    fprintf("\n derivada no ponto %d = %f", x, df(x))


    xs = zeros(maxIteracoes, 1);
    ys = zeros(maxIteracoes, 1);

    xs(1) = x;
    for i = 1:maxIteracoes
        ys(i) = f(xs(i));

        x1 = xs(i) - (f(xs(i))/df(xs(i)));

        xs(i+1) = x1;

        if  i < 6
          fprintf("I= %d X: %f\t f(x)= %f \n",
      i, xs(i), ys(i))
        endif

        if (abs(xs(i) - x1) <= tolerancia)
            break;
        endif

    endfor


    xs = xs(1:i, 1);
    ys = ys(1:i, 1);

    fprintf("no ponto %f de raiz o valor da fx : %f", x1, f(x1))
endfunction
