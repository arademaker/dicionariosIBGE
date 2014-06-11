\name{rot11pof2008.2009}
\docType{data}

\alias{rot11pof2008.2009}

\encoding{UTF-8}
\title{Data Dictionary label for  book of outgoing record POF 2008-2009 survey}
\description{

  One data dictionary label for reading "T_CADERNETA_DESPESA_S.txt" file
  (book of outgoing (type 11) record from POF 2008-2009 survey).

  
  In this record we didn't use the variable \code{METODO_QUANTKG}
  (MÉTODO DA QUANTIDADE ADQUIRIDA), because the label of de codes are to
  much extensive and there is more than one classification associated to
  it, so in order not to change the meaning of the labels adapting in
  the \code{rotulo} colummn, we excluded.

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
\source{The dictionaries were made based on the documentation of the
    PNAD survey available at \url{http://www.ibge.gov.br}.}

\keyword{datasets}
    