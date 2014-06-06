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
  showed in the data frame \link{produtos}.  

}
\format{
  A data set with 16 data frames with the dictionaries, 16 with labels of
  variables and more 7 data frames with extra tables.

  Dictionaries:
  \enumerate{
  
    \item  dic1pof2008.2009    \item  dic2pof2008.2009 
    \item  dic3pof2008.2009    \item  dic4pof2008.2009 
    \item  dic5pof2008.2009    \item  dic6pof2008.2009 
    \item  dic7pof2008.2009    \item  dic8pof2008.2009 
    \item  dic9pof2008.2009    \item  dic10pof2008.2009 
    \item  dic11pof2008.2009   \item  dic12pof2008.2009 
    \item  dic13pof2008.2009   \item  dic14pof2008.2009 
    \item  dic15pof2008.2009   \item  dic16pof2008.2009 

  }
  Labels:
  \enumerate{
    
    \item  rot1pof2008.2009    \item  rot2pof2008.2009 
    \item  rot3pof2008.2009    \item  rot4pof2008.2009 
    \item  rot5pof2008.2009    \item  rot6pof2008.2009 
    \item  rot7pof2008.2009    \item  rot8pof2008.2009 
    \item  rot9pof2008.2009    \item  rot10pof2008.2009 
    \item  rot11pof2008.2009   \item  rot12pof2008.2009 
    \item  rot13pof2008.2009   \item  rot14pof2008.2009 
    \item  rot15pof2008.2009   \item  rot16pof2008.2009 
  }
  Extra tables:
  \enumerate{
    \item  unidade_medida  \item  unidade_medida_alimentar 
    \item  local_aquisicao  \item  religioes 
    \item  produtos  \item  produtos_consumo_alimentar 
    \item  peso_volume   
  }
   
}
\source{The dictionaries were made based on the documentation of the
    PNAD survey available at \url{http://www.ibge.gov.br}.}
\keyword{datasets}