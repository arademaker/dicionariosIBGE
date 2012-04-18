le.pesquisa <- function (dicionario, pathname.in, pathname.out = NA, codigos, 
                         tbloco = 2000, rotulos = NULL) 
{
    inicios <- numeric(0)
    tamanhos <- numeric(0)
    for (k in 1:length(codigos)) {
        if (all(dicionario$cod != codigos[k])) 
            stop(paste("Vari\xe1vel", codigos[k], "n\xe3o existe em", 
                pathname.in))
        inicios[k] <- dicionario$inicio[dicionario$cod == codigos[k]]
        tamanhos[k] <- dicionario$tamanho[dicionario$cod == codigos[k]]
    }
    if (length(nomes) == 1) 
        if (is.na(nomes)) 
            nomes <- codigos
    if (length(nomes) > 1) 
        nomes[is.na(nomes)] <- codigos[is.na(nomes)]
    arq <- file(pathname.in)
    open(arq)
    cont = 1
    dados <- numeric(0)
    dadostemp2 <- numeric(0)
    nlidos = 0
    while (cont) {
        dadostemp <- scan(file = arq, what = "", sep = ";", nlines = tbloco, 
            quiet = TRUE)
        coluna <- substr(dadostemp, inicios[1], inicios[1] + 
            tamanhos[1] - 1)
        dadostemp2 <- data.frame(type.convert(coluna))
        if (length(inicios) > 1) 
            for (k in 2:length(inicios)) {
                coluna <- substr(dadostemp, inicios[k], inicios[k] + 
                  tamanhos[k] - 1)
                dadostemp2 <- cbind(dadostemp2, data.frame(type.convert(coluna)))
            }
        if (length(dadostemp) < tbloco) 
            cont = 0
        rm(dadostemp)
        dados <- rbind(dados, dadostemp2)
        nlidos <- nrow(dados)
    }
    close(arq)
    rm(dadostemp2)
    cat("\n Dados lidos de:")
    cat("\n", pathname.in)
    cat("\n", nrow(dados), "linhas  x ", ncol(dados), "colunas\nNomes das colunas:\n")
    colnames(dados) <- nomes
    print(colnames(dados))
    if (!is.na(pathname.out) & !pathname.out == "") {
        save(dados, file = pathname.out)
        cat("\nDados salvos em:\n", pathname.out)
        cat("\n\n")
    }
    cat("\n\n")
    dados
}
