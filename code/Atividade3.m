addpath('sistemas_lineares');

RNG_SEED = 42;
rng(RNG_SEED);

MATRIX_EX_08 = [0.780 0.563 0.217
                0.913 0.659 0.254];


matriz = MATRIX_EX_08;
matriz = PivotamentoParcial(matriz);
resolucao_gauss = EliminacaoGaussiana(matriz)
resolucao_lib = matriz(1:end, 1:end-1)\ matriz(:, end)


printf("\n\n Gauss jordan\n\n")
matriz
resolucao_gj = GaussJordan(matriz)
#resolucao_gj - resolucao_lib # correto


