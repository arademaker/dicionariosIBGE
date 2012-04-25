\name{le.pesquisa}
\alias{le.pesquisa}

\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
le.pesquisa(dicionario, pathname.in, codigos, tbloco = 2000, rotulos = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dicionario}{
%%     ~~Describe \code{dicionario} here~~
}
  \item{pathname.in}{
%%     ~~Describe \code{pathname.in} here~~
}
  \item{codigos}{
%%     ~~Describe \code{codigos} here~~
}
  \item{tbloco}{
%%     ~~Describe \code{tbloco} here~~
}
  \item{rotulos}{
%%     ~~Describe \code{rotulos} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (dicionario, pathname.in, codigos, 
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
  
  cat("\n", nrow(dados), "rows  x ", ncol(dados), "columms\n")
  colnames(dados) <- codigos
  if(length(rotulos)!=0){
    rotvar <- rotulos[grep(paste(codigos,collapse="|"),rotulos[,1]),]
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
  } 

  dados
  
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
