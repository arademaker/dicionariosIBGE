\name{dicdom2006}
\docType{data}

\alias{dicdom2006}

\encoding{UTF-8}
\title{Data Dictionary for PNAD 2006 survey}

\description{

  Data dictionary for reading "DOM2006.TXT" file (domiciles record from
  PNAD 2006 survey).
}

\format{
  This dictionary is a data frame with one line for each survey variable,
  and it has 4 columms, with important information of each variable.
  
  \tabular{lll}{
    inicio \tab numeric \tab Position of the value's first character in
    the data file \cr
    cod \tab character \tab Variable code \cr
    tamanho \tab numeric \tab Field size \cr
    desc \tab character \tab Short description\cr
  
  }
}
\source{
    PNAD documentation available in the CD's made by IBGE
    }
\keyword{datasets}