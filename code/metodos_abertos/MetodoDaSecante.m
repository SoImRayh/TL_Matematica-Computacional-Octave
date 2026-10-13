function [xs, ys, i] = MetodoDaSecante(f, xm1, x0, MAX_ITERACOES, TOLERANCIA)

  xs = zeros(MAX_ITERACOES, 1);
  ys = zeros(MAX_ITERACOES, 1);

  xs(1) = xm1;
  xs(2) = x0;

  ys(1) = f(xs(1));
  ys(2) = f(xs(2));

  # xs(i) = xm1
  # xs(i+1) = x0 da passada
  # xs(i+2) = x1 atual

  for i = 1:MAX_ITERACOES
    fx0 = f(xs(i+1));
    fxm1 = f(xs(i));

    ys(i) = fxm1;
    xs(i+2) = xs(i+1) - (fx0 * (xs(i+1)-xs(i)))/(fx0-fxm1);

    if  i < 6
      fprintf("Secante: I= %d XM1&X: %f, %f\t delta f(x)= %f \n", i, xs(i),xs(i+1),
      abs(ys(i) - ys(i+1)))
    endif

    if  abs(xs(i+2)-xs(i+1)) <= TOLERANCIA
      break
    endif
  endfor

  xs = xs(1:i,1);
  ys = ys(1:i,1);


end

