\name{le.pesq}
\alias{le.pesq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
le.pesq(document.path, dicIBGE, rotIBGE, var)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{document.path}{
%%     ~~Describe \code{document.path} here~~
}
  \item{dicIBGE}{
%%     ~~Describe \code{dicIBGE} here~~
}
  \item{rotIBGE}{
%%     ~~Describe \code{rotIBGE} here~~
}
  \item{var}{
%%     ~~Describe \code{var} here~~
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
