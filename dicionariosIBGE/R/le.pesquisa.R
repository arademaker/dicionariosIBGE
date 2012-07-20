le.pesquisa <-
  function (dicionario, pathname.in, codigos, rotulos = NULL, tbloco = 2000) 
{
  
  inicios <- numeric(0)
  tamanhos <- numeric(0)
  if(!is.data.frame(dicionario)) 
    stop(cat(paste("\n","Variable", dicionario,"is not a data.frame see documentation","\n")))
  
  for (k in 1:length(codigos)) {
    if (all(dicionario$cod != codigos[k])) 
      stop(cat(paste("\n Variable", codigos[k], "do not exist in", pathname.in,"file or directory")))
    inicios[k] <- dicionario$inicio[dicionario$cod == codigos[k]]
    tamanhos[k] <- dicionario$tamanho[dicionario$cod == codigos[k]]
  }
  arq <- file(pathname.in)
  open(arq)
  cont = 1
  dados <- numeric(0)
  dadostemp2 <- numeric(0)
  
  lines <- as.numeric(strsplit(system(paste("wc -l",pathname.in,sep=" "),intern=TRUE),split=" ")[[1]][1]) 

  max <- (lines/tbloco*length(inicios) + length(codigos))
  if(is.null(rotulos)){
  max <- (lines/tbloco*length(inicios))
  }
  pb <- txtProgressBar(min = 0, max = max, style = 3)
  
  i=0
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
        Sys.sleep(0.1)
        process <- i*length(inicios) + k
        setTxtProgressBar(pb, process)
      }
    i <- i + 1
    if (length(dadostemp) < tbloco) 
      cont = 0
    rm(dadostemp)
    dados <- rbind(dados, dadostemp2)
    
  }
  
  close(arq)
  rm(dadostemp2)
  colnames(dados) <- codigos

  if( is.null(rotulos) ){
    close(pb)
    cat("\n")
    return(dados)
  }

   
  for(n in c(1:ncol(dados))){

    if(colnames(dados)[n] %in% unique(rotulos$cod)){
      dados[,n] <- factor(dados[,n],levels = subset(rotulos, cod == colnames(dados)[n])[,"valor"],
                          labels = subset(rotulos,cod==colnames(dados)[n])[,"rotulo"])
    }
    Sys.sleep(0.1)
    process <- i*length(inicios) + n
    setTxtProgressBar(pb, process)
  }
  
  close(pb)
  cat("\n")
  return(dados)
}
