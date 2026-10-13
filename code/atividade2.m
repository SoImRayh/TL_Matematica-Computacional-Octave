addpath('metodos_abertos');

MAX_ITERACOES =1000;
TOLERANCIA = 0;
STRING_TEMPLATE = '\n\nValor encontrado para x: %i \nValor da função no ponto x: fx(x) = %f \nQuantidade de iterações necessárias: %d\n'

f = @(x) 10^(-10) .* x.^10 .* cos(4 .* x) - 10^(-5) .* x.^2 .* sin(2 .* x);
df = @(x) 10^(-10) .* (10 .* x.^9 .* cos(4 .* x) - 4 .* x.^10 .* sin(4 .* x)) - 10^(-5) .* (2 .* x .* sin(2 .* x) + 2 .* x.^2 .* cos(2 .* x));

[xs, ys, iteracoes] = NewtonRaphson(f, df, 3, MAX_ITERACOES, TOLERANCIA);

[xss,yss, iteracoess] = MetodoDaSecante(f,-1, 3, MAX_ITERACOES, TOLERANCIA);

xss

fprintf(STRING_TEMPLATE, xs(iteracoes), ys(iteracoes), iteracoes);

#plotar grafico de convergencia de X
figure(1); PlotarGraficoDeConvergencia(xs,
                                'Numero de iteracoes',
                                'Valor de X na iteracao',
                                'Grafico de convergencia de X');

#plotar grafico de convergencia de Y
figure(2); PlotarGraficoDeConvergencia(ys,
                              'Numero de iteracoes',
                              'F(x) na iteracao',
                              'Grafico de convergencia de f(x)');

figure(3); PlotarGraficoAnimado(f,2:0.1:4, xs, ys);

# ============================== EXERCICIO 23
fprintf(STRING_TEMPLATE, xss(iteracoess), yss(iteracoess), iteracoess);

#plotar grafico de convergencia de X
figure(4); PlotarGraficoDeConvergencia(xss,
                                'Numero de iteracoes',
                                'Valor de X na iteracao',
                                'Grafico de convergencia de X');

#plotar grafico de convergencia de Y
figure(5); PlotarGraficoDeConvergencia(yss,
                              'Numero de iteracoes',
                              'F(x) na iteracao',
                              'Grafico de convergencia de f(x)');

figure(6); PlotarGraficoAnimado(f,-2:0.1:4, xss, yss);

