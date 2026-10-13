function x = EliminacaoGaussiana(matriz)
    linhas_da_matriz = size(matriz, 1);
    x = zeros(linhas_da_matriz,1);
    # eliminação progressiva

    for linha = 1 : linhas_da_matriz -1
        coluna = linha; # facilitar a leitura
        fatores = matriz(linha+1 : linhas_da_matriz, coluna ) / matriz(linha, coluna);
        matriz(linha +1 : linhas_da_matriz, :) = matriz(linha +1 : linhas_da_matriz, :) - fatores * matriz(linha, :);
        matriz # para mostrar
    end
    # substituição regressiva

    for linha = linhas_da_matriz : -1 : 1
        coluna = linha;

        soma_constantes = sum(matriz(linha, coluna +1 : end -1));
        x(linha, 1) = (matriz(linha, end)- soma_constantes)/ matriz(linha, coluna);
        matriz(:, coluna) = matriz(: , coluna) * x(linha);
        x
        linha
        matriz
    end

endfunction
