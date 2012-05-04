\name{dicdom2009}
\docType{data}
\alias{dicdom2009}

\encoding{UTF-8}
\title{Data Dictionarie for PNAD 2009 survey}

\description{

  Data dictionary for reading "DOM2009.TXT" file (domiciles survey). In
  the column DESC we choose to remove all accents to avoid encoding
  problems.

  In the original IBGE documentation, the variables below have the
  following comments.

  Variable V9992 has values in the format AAAAMMDD.

  Variable V4611 has comment "Igual ao peso da pessoa de referencia do
  domicilio".
}

\format{
  This dictionary is a data frame with one line for each survey variable,
  and it has 6 columms, with important information of each variable.
  
  \tabular{lll}{
    inicio \tab numeric \tab Position of the value's first character in
    the data file \cr
    cod \tab character \tab Variable code \cr
    tamanho \tab numeric \tab Field size \cr
    desc \tab character \tab Short description\cr
    unidade \tab character\tab unity of numeric variable\cr
    comentario \tab character\tab Comments about the variable
  }
}
\source{
  http://www.ibge.gov.br
    }
\keyword{datasets}