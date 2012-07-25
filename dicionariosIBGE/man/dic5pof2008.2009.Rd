\name{dic5pof2008.2009}
\docType{data}

\alias{dic5pof2008.2009}

\encoding{UTF-8}
\title{Dictionary for inventory of durable goods record POF 2008-2009 survey}

\description{

  Data dictionary for reading "T_INVENTARIO_S.txt" file (inventory of
  durable goods (type 5) record from POF 2008-2009 survey).

}

\format{
  This dictionary is a data frame with one line for each variable,
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
    PNAD survey available at \url{http://www.ibge.gov.br}.}
\keyword{datasets}