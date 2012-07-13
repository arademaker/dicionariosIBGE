\name{dicpes2009}
\docType{data}

\alias{dicpes2009}

\encoding{UTF-8}
\title{Data Dictionary for PNAD 2009 survey}
\description{
  Data dictionary for reading "PES2009.TXT" file (people record from
  PNAD 2009 survey). In the column \code{desc} we choose to remove all accents
  to avoid encoding problems.

  In the original IBGE documentation, the variables below have the
  following comments:

  Variable V0102 has comment " As 2 primeiras posições são o código da
  Unidade da Federação"
  
  Variables V7060, V7090, V9906, V9971, V9990 and V9911 have comment
  "Ver Composição dos Grupamentos Ocupacionais e Relação de Códigos de
  Ocupação da CBO-Domiciliar em ANEXO de Notas Metodológicas" these
  respectives notes are available in the microdata from PNAD 2009 survey
  in IBGE website.
  
  Variables V7070, V7100, V9907, V9972, V9991 and V9112 have comment
  "Ver Composição dos Grupamentos de Atividade e Relação de Códigos de
  Atividades da CNAE-Domiciliar em ANEXO de Notas Metodológicas" these
  respectives notes are in the available documents from PNAD 2009 survey
  in IBGE website.

  Variable V4732 is equal to the weight of the family reference person

  Variable V9993 has values in the format AAAAMMDD
  
}
\format{
  This dictionary is a data frame with one line for each survey variable,
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