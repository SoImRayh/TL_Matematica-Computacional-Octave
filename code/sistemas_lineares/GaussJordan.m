function x = GaussJordan(matriz)
    x = zeros(10,1);
    linhas_da_matriz = size(matriz, 1);
    # eliminação progressiva
    printf("\n Eliminação Progressiva")
    for linha = 1 : linhas_da_matriz
        coluna = linha; # facilitar a leitura

        matriz(linha, :) = matriz(linha, :)/matriz(linha, coluna); # normalizando a linha
        fatores = matriz(linha+1 : linhas_da_matriz, coluna ) / matriz(linha, coluna);
        matriz(linha +1 : linhas_da_matriz, :) = matriz(linha +1 : linhas_da_matriz, :) - fatores * matriz(linha, :);
        matriz
    end
    # eliminação regressiva
    printf("\nEliminação regressiva\n")
    for linha = linhas_da_matriz : -1 : 2
        coluna = linha;
        
        fatores = matriz(1:linha-1, coluna) / matriz(linha, coluna);
        matriz(1:linha-1, :) = matriz(1:linha-1, :) - fatores * matriz(linha, :);#linha suspeita
        matriz
    end
    x = matriz(:, end);
endfunction
