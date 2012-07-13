\name{rotdom2009}
\docType{data}

\alias{rotdom2009}

\encoding{UTF-8}
\title{Data Dictionary label for PNAD 2009 survey}
\description{
  One data dictionary label for reading "DOM2009.TXT" file (domiciles
  record from PNAD 2009 survey).  In the column \code{rotulo} we choose
  to remove all accents to avoid encoding problems.
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
    