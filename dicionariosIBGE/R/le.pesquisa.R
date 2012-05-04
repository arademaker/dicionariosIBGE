le.pesquisa <-
  function (dicionario, pathname.in, codigos, tbloco = 2000, rotulos = NULL) 
{
  inicios <- numeric(0)
  tamanhos <- numeric(0)
  for (k in 1:length(codigos)) {
    if (all(dicionario$cod != codigos[k])) 
      stop(paste("Variavel", codigos[k], "nao existe em", pathname.in))
    inicios[k] <- dicionario$inicio[dicionario$cod == codigos[k]]
    tamanhos[k] <- dicionario$tamanho[dicionario$cod == codigos[k]]
  }
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
  colnames(dados) <- codigos

  if( is.null(rotulos) )
    return(dados)

  rotvar <- rotulos[rotulos$cod == codigos,]

  for(n in c(1:ncol(dados))){
    num <- grep(colnames(dados[n]),rotvar[,1])
    if(length(num)!=0){
      for(i in num){
        result <- grep(rotvar[i,2],dados[,n])
        if(length(result)!=0){
          dados[result,n] <- rotvar[i,3]
        }
      }
    }
  }
  return(dados)
}

