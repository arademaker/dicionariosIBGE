\name{dic16pof2008.2009}
\docType{data}

\alias{dic16pof2008.2009}

\encoding{UTF-8}
\title{Dictionary for food consumption record POF 2008-2009 survey}

\description{

  Data dictionary for reading "T_CONSUMO_S.txt" file (food consumption
  (type 16) record from POF 2008-2009 survey).

  The \code{COD_PREPARACAO} (code for way of preparation) appers in the
  file 'Descricoes dos registros POF 2008-2009.doc' (documentation
  provided by IBGE) as having the level \code{99} associated to the
  label \code{nao aplicavel}, but in the file 'Classificacoes POF
  2008-2009.doc' appears the same label associated to other level,
  \code{16}. We choose the level \code{99}, because it's the one that
  appears when reading the data file.

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