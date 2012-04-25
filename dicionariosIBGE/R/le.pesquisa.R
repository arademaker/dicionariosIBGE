le.pesquisa <-
function(dicionario, pathname.in,codigos,rotulos=NULL){
    
    dicvar <- dicionario[grep(paste(codigos,collapse="|"),dicionario[,2]),c(1:3)]
    

    width <- function(codigos,dicvar){
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

    output <- read.fwf(pathname.in, widths=width(codigos,dicvar),col.names=dicvar$codigo)

    if(length(rotulos)!=0){
      rotvar <- rotulos[grep(paste(codigos,collapse="|"),rotulos[,1]),]
      for(n in c(1:ncol(output))){
        
        num <- grep(colnames(output[n]),rotvar[,1])
        if(length(num)!=0){
          for(i in num){
            
            result <- grep(rotvar[i,2],output[,n])
            if(length(result)!=0){
              output[result,n] <- rotvar[i,3]
            }
          }
        }
      }
    }
    output
  }

