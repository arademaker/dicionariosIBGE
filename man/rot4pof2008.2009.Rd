\name{rot4pof2008.2009}
\docType{data}

\alias{rot4pof2008.2009}

\encoding{UTF-8}
\title{Data Dictionary label for life condition record POF 2008-2009 survey}
\description{

  One data dictionary label for reading "T_CONDICOES_DE_VIDA_S.txt" file
  (life condition (type 4) record from POF 2008-2009 survey).

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
    