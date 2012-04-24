le.pesq <-
function(document.path,dicIBGE,rotIBGE,var){
  
  dicvar <- dicIBGE[grep(paste(var,collapse="|"),dicIBGE[,2]),c(1:3)]
  rotvar <- rotIBGE[grep(paste(var,collapse="|"),rotIBGE[,1]),]

  dicwidth <- function(var,dicvar){
    width <- c()
    ult <- 1
    for(i in 1:length(dicvar[,2])){
      if(ult==dicvar[i,1])
        { width <- c(width,dicvar[i,3])}
      else {
        width <- c(width,-(dicvar[i,1]-ult))
        width <- c(width,dicvar[i,3])
      }
      ult <- dicvar[i,1]+dicvar[i,3]
    }
    
    width
  }

  dictable <- read.fwf(document.path, widths=dicwidth(var,dicvar),col.names=dicvar$codigo)

  for(n in c(1:ncol(dictable))){
    
    num <- grep(colnames(dictable[n]),rotvar[,1])
    if(length(num)!=0){
      for(i in num){
        
        result <- grep(rotvar[i,2],dictable[,n])
        if(length(result)!=0){
          dictable[result,n] <- rotvar[i,3]
        }
      }
    }
  }
  dictable
}

