addpath('code')

# constantes e variaveis iniciais
MAX_ITERACOES = 1000
TOLERANCIA = 1e-5
STRING_TEMPLATE = '\n\nValor encontrado para x: %i \nValor da função no ponto x: fx(x) = %i \nQuantidade de iterações necessárias: %d\n'
inicio = 3
final = 4


fx = @(x) tan(x)*((35/2)*x^3 - 44* x^2 + 887*x +229);


[xs, ys, iteracoes] = BissectionMethod(fx, inicio, final,
                                     MAX_ITERACOES, TOLERANCIA);

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

figure(3); PlotarGraficoAnimado(fx,inicio:0.1:final, xs, ys);
