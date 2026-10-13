function [xs, ys, i] = BissectionMethod(fx , interval_init, interval_end, max_iterations, min_tolerance)
    meio_old = inf;
    #iniciar vetores para guardar informa;'oes de x e de y
    xs = nan(max_iterations, 1);
    ys = nan(max_iterations, 1);


    # verificar de forma inocente se há uma raiz no intervalo:
    if fx(interval_init) * fx(interval_end) >= 0
        error("Ou não há raiz no intervalo, ou são duas raizes")
    endif

    for i = 1:max_iterations
        xs(i) = (interval_init + interval_end)/2;
        ys(i) = fx(xs(i));

        teste = ys(i) * fx(interval_init);

        # Diferenca das raizes
        if i < 6
          if  i > 1
            fprintf('Iteração %d, raiz: %i, diferença das f(x): %i \n', i, ys(i), abs(ys(i) - ys(i-1)));
          else
            fprintf('Iteração %d, raiz: %i, diferença das f(x): %i \n', i, ys(i), inf);
          end


        endif



        # se fx aplicada ao ponto `meio` = 0, raiz foi encontrada, ou se a diferenca de fx0 e fx1 menor que a tolerancia;
        if ys(i) == 0 || abs(xs(i) - meio_old) < min_tolerance
            break
        end

        # se o produto das funcoes for < 0, a raiz esta entre o inicio e o meio
        if teste < 0
            interval_end = xs(i);
        else
            interval_init = xs(i);
        end
        meio_old = xs(i);
    endfor

    xs = xs(1:i, 1);
    ys = ys(1:i, 1);
endfunction
