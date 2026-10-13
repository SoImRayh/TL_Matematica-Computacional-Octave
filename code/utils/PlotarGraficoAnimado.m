function PlotarGraficoAnimado(fx, intervalo, xs, ys)
  #Calcular o intervalo
  #intervalo = min(fx) - 1:0.1:max(fx) + 1


  #grafico da funcao
  fxs = nan(length(intervalo));
  for i= 1:numel(intervalo)
    fxs(i) = fx(intervalo(i));
  endfor


  for i = 1:numel(xs)

    plot(intervalo, fxs, 'linewidth', 4)
    set(gca, 'fontsize', 30)
    hold on;
    plot(xs(i), ys(i), 'o',
    'markersize', 20, 'color', [1 0 0],
    'markerfacecolor', [1 0 0])
    title(sprintf('Gráfico de Animado do algoritmo\n Valor de f(x) na iteração %i', i));
    hold off;
    grid on;

    xlabel('Valor de X');
    ylabel('Valor de F(x)');
    pause(0.1)

  endfor


end

