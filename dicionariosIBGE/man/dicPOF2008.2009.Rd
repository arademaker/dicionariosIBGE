\name{dicPOF2008.2009}
\docType{data}

\alias{dicPOF2008.2009}

\encoding{UTF-8}
\title{Data set for POF 2008-2009 suvey}
\description{
  One data set with 16 dictionaries one for each type of record, and 16
  dictionaries labels respective to each record, and more 7 data frames
  with extra tables, with some categorical variables of the survey, that
  are given in the POF documentation (provided by IBGE).

  In the column \code{desc} (dictionaries data frames) of all records we choose
  to remove all accents to avoid encoding problems.

  In the column \code{rotulo} (dictionaries label data frames) of all
  records we choose to remove all accents to avoid encoding problems.
  
  In this survey we didn't use the variable \code{COD_ITEM} (CÓDIGO DO
  ITEM) in any of the type records that it appears, execpt in the food
  consumption (type 16) record that \code{COD_ITEM} (CÓDIGO DO TIPO DE
  ALIMENTO) is represented by another classification. That variable is
  showed in the data frame \code{produtos}.  See the Extra Tables
  documentation for more information about the variable
  (help(produtos)).

}
\format{
  A data set with 16 data frames with the dictionaries, 16 with labels of
  variables and more 7 data frames with extra tables.

  Dictionaries:
  \tabular{ll}{
  
    - dic1pof2008.2009 \tab   - dic2pof2008.2009 \cr
    - dic3pof2008.2009 \tab   - dic4pof2008.2009 \cr
    - dic5pof2008.2009 \tab   - dic6pof2008.2009 \cr
    - dic7pof2008.2009 \tab   - dic8pof2008.2009 \cr
    - dic9pof2008.2009 \tab   - dic10pof2008.2009 \cr
    - dic11pof2008.2009 \tab  - dic12pof2008.2009 \cr
    - dic13pof2008.2009 \tab  - dic14pof2008.2009 \cr
    - dic15pof2008.2009 \tab  - dic16pof2008.2009 \cr

  }
  Labels:
  \tabular{ll}{
    
    - rot1pof2008.2009 \tab   - rot2pof2008.2009 \cr
    - rot3pof2008.2009 \tab   - rot4pof2008.2009 \cr
    - rot5pof2008.2009 \tab   - rot6pof2008.2009 \cr
    - rot7pof2008.2009 \tab   - rot8pof2008.2009 \cr
    - rot9pof2008.2009 \tab   - rot10pof2008.2009 \cr
    - rot11pof2008.2009 \tab  - rot12pof2008.2009 \cr
    - rot13pof2008.2009 \tab  - rot14pof2008.2009 \cr
    - rot15pof2008.2009 \tab  - rot16pof2008.2009 \cr
  }
  Extra tables:
  \tabular{ll}{
    - unidade_medida \tab - unidade_medida_alimentar \cr
    - local_aquisicao \tab - religioes \cr
    - produtos \tab - produtos_consumo_alimentar \cr
    - peso_volume \tab  \cr
  }
   
}
\source{
  http://www.ibge.gov.br
  
    }
\keyword{datasets}