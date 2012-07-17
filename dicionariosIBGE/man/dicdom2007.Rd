\name{dicdom2007}
\docType{data}

\alias{dicdom2007}

\encoding{UTF-8}
\title{Data Dictionary for PNAD 2007 survey}

\description{

  Data dictionary for reading "DOM2007.TXT" file (domiciles record from
  PNAD 2007 survey).
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
        http://www.ibge.gov.br
    }
\keyword{datasets}