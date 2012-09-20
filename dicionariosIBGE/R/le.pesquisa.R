le.pesquisa <- function(dicionario, pathname.in, codigos, rotulos = NULL, tbloco = 2000, nlines) {

  inicios <- numeric(0)
  tamanhos <- numeric(0)
  
  if( !all(c("inicio","cod", "tamanho", "desc") == colnames(dicionario)) )
    stop(paste("The", substitute(dicionario)," is not a valid object for 'dicionario' parameter",sep=" "))
      
  if( ! all(c("cod", "valor", "rotulo") == colnames(rotulos)) )
    stop(paste("The", substitute(rotulos), "is not a valid object for 'rotulos' parameter", sep=" "))
  
  tmp <- merge(data.frame(cod = codigos, stringsAsFactors = FALSE), dicionario)
  inicios <- tmp[,"inicio"]
  tamanhos <- tmp[,"tamanho"]
  rm(tmp)
  
  if ( length(inicios) == 0)
      stop(paste("Variables do not exist in", substitute(dicionario), sep=" "))

  pb <- txtProgressBar(min = 0, max = tbloco, style = 3)
  
  arq <- file(pathname.in)
  open(arq)
  cont = 1
  dados <- numeric(0)
  dadostemp2 <- numeric(0)
  
  i=0
  while (cont) {
    dadostemp <- scan(file = arq, what = "", sep = ";", nlines = tbloco, quiet = TRUE)
    coluna <- substr(dadostemp, inicios[1], inicios[1] + tamanhos[1] - 1)
    dadostemp2 <- data.frame(type.convert(coluna))
    if (length(inicios) > 1)
      for (k in 2:length(inicios)) {
        coluna <- substr(dadostemp, inicios[k], inicios[k] + tamanhos[k] - 1)
        dadostemp2 <- cbind(dadostemp2, data.frame(type.convert(coluna)))
        process <- i*length(inicios) + k
        setTxtProgressBar(pb, process)
      }
    i <- i + 1
    if(length(inicios)==1){
      process <- i*length(inicios) + 1 
      setTxtProgressBar(pb, process)
    }
    if (length(dadostemp) < tbloco) 
      cont = 0
    rm(dadostemp)
    dados <- rbind(dados, dadostemp2)
  }
  
  close(arq)
  rm(dadostemp2)
  colnames(dados) <- codigos

  if(is.null(rotulos)){
    close(pb)
    cat("\n")
    return(dados)
  }

  for(n in 1:ncol(dados)){
    colname <- colnames(dados)[n]
    if(colname %in% rotulos$cod){
      tmp <- rotulos[rotulos$cod == colname, 2:3]
      dados[,n] <- factor(dados[,n], levels = tmp[,1], labels = tmp[,2])
    }
    process <- i * length(inicios) + n
    setTxtProgressBar(pb, process)
  }
  
  close(pb)
  cat("\n")
  return(dados)
}
