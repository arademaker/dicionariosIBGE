\name{rot6pof2008.2009}
\docType{data}

\alias{rot6pof2008.2009}

\encoding{UTF-8}
\title{Data Dictionary label for outgoing 90 days record POF 2008-2009 survey}
\description{

  One data dictionary label for reading "T_DESPESA_90DIAS_S.txt" file
  (outgoing 90 days (type 6) record from POF 2008-2009 survey).

  In this record we didn't use the variable \code{COD_IMPUT_QUANT}
  (CÓDIGO DE IMPUTAÇÃO - QUANTIDADE), because the label of de codes are
  to much extensive, so in order not to change the meaning of the labels
  adapting in the \code{rotulo} colummn, we excluded.


}

\format{
  This dictionary is a data frame with one line for each survey categorical variable,
  and it has 3 columms, with important information of each categorical variable.
  
  \tabular{lll}{
    cod    \tab character \tab Variable code \cr
    valor  \tab numeric   \tab Levels of the categorical variable \cr
    rotulo \tab numeric   \tab Labels of the categorical variable 
  }
}
\source{
  \url{http://www.ibge.gov.br}
}

\keyword{datasets}
    