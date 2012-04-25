\name{le.pesquisa}
\alias{le.pesquisa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
le.pesquisa(dicionario, pathname.in, pathname.out = NA, codigos, tbloco = 2000, rotulos = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dicionario}{
%%     ~~Describe \code{dicionario} here~~
}
  \item{pathname.in}{
%%     ~~Describe \code{pathname.in} here~~
}
  \item{pathname.out}{
%%     ~~Describe \code{pathname.out} here~~
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
function (dicionario, pathname.in, pathname.out = NA, codigos, 
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
    cat("\n\n\n")
    dados
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
