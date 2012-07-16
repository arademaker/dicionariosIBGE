\name{dic1pof2008.2009}
\docType{data}

\alias{dic1pof2008.2009}

\encoding{UTF-8}
\title{Dictionary for domiciles record POF 2008-2009 survey}

\description{

  Data dictionary for reading "T_DOMICILIO_S.txt" file (domiciles (type
  1) record from POF 2008-2009 survey).

  The categorical variables \code{COD_CONTRATO_DOCUM} (type of rent) and
  \code{COD_TEMPO_MORADIA} (rent time) have the occurrence of ZERO,
  reading the data file, but that value doesn't have any categorical
  meaning in any documentation from POF 2008-2009 survey (available for
  download in the IBGE website). Because of that appears NAs when you
  read the data using the \code{rotulos} field of the \code{le.pesquisa}
  function.
  

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
\source{
  http://www.ibge.gov.br
    }
\keyword{datasets}