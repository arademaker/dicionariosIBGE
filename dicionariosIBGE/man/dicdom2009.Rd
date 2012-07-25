\name{dicdom2009}
\docType{data}

\alias{dicdom2009}

\encoding{UTF-8}
\title{Data Dictionary for domiciles record PNAD 2009 survey}

\description{

  Data dictionary for reading "DOM2009.TXT" file (domiciles record from
  PNAD 2009 survey). In the column \code{desc} we choose to remove all accents
  to avoid encoding problems.

  The variable V0216 in the original PNAD documentation has two meanings
  (categorical and quantitative), because of that we created two
  variables V0216a (categorical) and V0216b (quantitative) to avoid
  complications with the dicitionary analysis
  

  In the original PNAD documentation, the variables below have the
  following comments:
  
  Variable V0102 has comment " As 2 primeiras posições são o código da
  Unidade da Federação"

  Variable V4614 has comment "exclusive o rendimento das pessoas cuja
  condição na unidade domiciliar era pensionista, empregado doméstico ou
  parente do empregado doméstico e das pessoas de menos de 10 anos de
  idade"

  Variable V4617 has comment "Identificação de estrato de município auto-representativo e não auto-representativo"

  Variable V4618 has comment "Unidade primária de amostragem"

  Variable V4620 has comment "exclusive as pessoas cuja condição na unidade domiciliar era pensionista, empregado doméstico ou parente do empregado doméstico"

  Variable V4605 has value with 10 decimals
  
  Variable V4607 has value with 10 decimals
  
  Variable V4608 has value with 1 decimal

  Variable V4619 has value with 2 decimals

  Variable V9992 has values in the format AAAAMMDD.

  Variable V4611 has comment "Igual ao peso da pessoa de referencia do
  domicilio".
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
    PNAD survey available at \url{http://www.ibge.gov.br}.}
    
\keyword{datasets}