\name{dicpes2006}
\docType{data}

\alias{dicpes2006}

\encoding{UTF-8}
\title{Data Dictionary for people record PNAD 2006 survey}
\description{

  Data dictionary for reading "PES2006.TXT" file (people record from
  PNAD 2006 survey). In the column \code{desc} we choose to remove all
  accents to avoid encoding problems.
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
\source{The dictionaries were made based on the documentation of the
    PNAD survey available in the CD's made by IBGE.}
\keyword{datasets}