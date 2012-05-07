le.pesquisa <-
  function (dicionario, pathname.in, codigos, rotulos = NULL,tbloco = 2000) 
{
  
  inicios <- numeric(0)
  tamanhos <- numeric(0)
  if(is.data.frame(dicionario)==FALSE)stop(cat("\n Variable dicionario is not a data.frame \n see documentation"))
  if(unique(colnames(dicionario)==c("inicio","cod","tamanho","desc"))==TRUE)stop(cat("\n Variable dicionario doesn't has the right columms names, see documentation"))
  if(is.data.frame(rotulos)==FALSE)stop(cat("\n Variable rotulos is not a data.frame \n see documentation"))
  if(unique(colnames(rotulos)==c("cod","valor","rotulo"))==TRUE)stop(cat("\n Variable rotulos doesn't has the right columms names, see documentation"))
  for (k in 1:length(codigos)) {
    if (all(dicionario$cod != codigos[k])) 
      stop(cat("\n Variable", codigos[k], "do not exist in", pathname.in,"file or directory"))
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
  for(n in c(1:ncol(dados))){
    if( TRUE %in% unique(rotulos$cod==colnames(dados[n])) ==TRUE){
      dados[,n] <- factor(dados[,n],levels=subset(rotulos,cod==colnames(dados[n]))[,2], labels=subset(rotulos,cod==colnames(dados[n]))[,3])
    }
  }
  return(dados)
}

