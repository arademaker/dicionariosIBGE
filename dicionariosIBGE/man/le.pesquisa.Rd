\name{le.pesquisa}
\alias{le.pesquisa}

\title{Função que realiza a leitura de microdados do IBGE}
\description{
  Realiza uma leitura recuperando apenas as variáveis que se deseja
  utilizar. Por exemplo, para tabular dados da PNAD sobre educação,
  necessita-se apenas das variáveis referentes a esse tema (anos de
  estudo, rede de ensino, ...), além de outras variáveis mais gerais
  como idade, sexo e peso amostral.
}
\usage{
dados <- le.pesquisa(dicionario, pathname.in, codigos, rotulos = NULL)
}

\arguments{
  \item{dicionario}{
  Objeto do tipo data-frame com 4 ou 6 colunas (depende do ano),
  fornecido junto com o pacote. Contém as todas as variáveis, suas
  descrições, início e tamanho de seus respectivos microdados.Cada
  arquivo de microdados deve possuir um dicionário específico.
  }
  \item{pathname.in}{
    Objeto do tipo character com o caminho e nome do arquivo de
    microdados a ser lido.
  }
  \item{codigos}{
  Objeto do tipo vetor de caracteres, com os códigos das variáveis que
  se deseja ler, conforme especificado no dicionário.

  }
  \item{rotulos}{
  Objeto do tipo data-frame com 3 colunas, fornecido junto com o
  pacote. Contém todas as variáveis categóricas, seus respectivos
  valores e rótulos. 
  }
}
\details{
  A variável \code{rotulos} têm como definição padrão ser NULL, caso ela
  seja inicializada com outro valor a função retornara o data-frame de
  microdados com os respequitivos rótulos selecionados. 
}
\value{
  Como resultado da leitura é fornecido um objeto do tipo data-frame
  apenas com as variáveis escolhidas e com o número de linhas igual ao
  do arquivo original de microdados. Os nomes das colunas do data-frame
  de saída são os nomes das variáveis fornecidas em \code{codigos}. Caso
  a opção de rótulos seja selecionada o data-frame vira também com os
  rótulos das variáveis categóricas selecionadas em \code{rotulos}

}
\references{
 Função le.pesquisa do pacote IBGEPesq
}
\author{
  Alexandre Rademaker \email{arademaker@gmail.com}
  Rafael F. Haeusler  \email{rafael.f.haeusler@gmail.com}
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
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
}


\keyword{fucao_leitura}

