\name{dic8pof2008.2009}
\docType{data}

\alias{dic8pof2008.2009}

\encoding{UTF-8}
\title{Dictionary for others outgoing record POF 2008-2009 survey}

\description{

  Data dictionary for reading "T_OUTRAS_DESPESAS_S.txt" file (others
  outgoing (type 8) record from POF 2008-2009 survey).

  The \code{COD_LOCAL_COMPRA} (site of acquisition) appers in the file
  'Descricoes dos registros POF 2008-2009.doc' (documentation provided
  by IBGE) as having the level \code{88801} associated to the label
  \code{ignorado}, but in the files 'Classificacoes POF 2008-2009.doc' and
  'Cadastro de local de aquisicoes da POF 2008-2009.xls' appears the
  same label associated to other level, \code{99902}. In the file
  'Descricoes dos registros POF 2008-2009.doc' the level ZERO is
  associated to the label \code{nao aplicavel}.

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