function matriz = PivotamentoParcial(matriz)
    # percorrer toda as linhas da matriz, organizando cada uma com o maior valor na coluna principal
    # faze-se isto para não ter zeros na diagonal principal e mais que isso, ter o maior valor possivel.

    for linha = 1 : size(matriz, 1) -1 # -1 porque a ultima linha nao e necessaria calcular 
        [ ~ , indice_do_vetor ] = max(abs(matriz(linha:end, linha)));
        indice_real = indice_do_vetor + (linha -1);

        aux = matriz(linha, :);
        matriz(linha, : ) = matriz(indice_real, : );
        matriz(indice_real, : ) = aux;
        

    end

endfunction