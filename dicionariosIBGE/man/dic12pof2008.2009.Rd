\name{dic12pof2008.2009}
\docType{data}

\alias{dic12pof2008.2009}

\encoding{UTF-8}
\title{Dictionary for individual outgoing record POF 2008-2009 survey}

\description{

  Data dictionary for reading "T_DESPESA_S.txt" file (individual
  outgoing (type 12) record from POF 2008-2009 survey).

  The \code{COD_LOCAL_COMPRA} (site of acquisition) appers in the file
  'Descricoes dos registros POF 2008-2009.doc' (documentation provided
  by IBGE) as having the level \code{88801} associated to the label
  \code{ignorado}, but in the files 'Classificacoes POF 2008-2009.doc' and
  'Cadastro de local de aquisicoes da POF 2008-2009.xls' appears the
  same label associated to other level, \code{99902}. In the file
  'Descricoes dos registros POF 2008-2009.doc' the level ZERO is
  associated to the label \code{nao aplicavel}.

  The variable \code{COD_CARACTERISTICA} (characteristic of the drugs)
  has the value ZERO, when reading the data file, but that value is not
  related to any category in any of the documentation files (provided by
  IBGE).Because of that appears NAs when you read the data using the
  \code{rotulos} field of the \code{le.pesquisa} function.
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