\name{dicPNAD2009}
\docType{data}

\alias{dicPNAD2009}

\alias{dicdom2009}
\alias{dicpes2009}
\alias{rotdom2009}
\alias{rotpes2009}

\encoding{UTF-8}
\title{Data Dictionaries and labels for PNAD2009}
\description{
  One data dictionary for people records and one for house records, and
  one data labels for people records and for house records for PNAD2009.
}
\format{
  Each dictionary is a data frame with one line for each survey variable,
  and it has 6 columms, with important information of each variable.
  
  \tabular{lll}{
    inicio \tab numeric \tab Position of the value's first character in
    the data file \cr
    cod \tab character \tab Variable code \cr
    tamanho \tab numeric \tab Field size \cr
    desc \tab character \tab Short description
  }
}
\source{
  http://www.ibge.gov.br/home/estatistica/populacao/trabalhoerendimento/pnad2009/microdados.shtm
  
    }
\keyword{datasets}