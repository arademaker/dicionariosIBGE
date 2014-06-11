\name{Extra-Tables}
\docType{data}

\alias{unidade_medida}
\alias{unidade_medida_alimentar}
\alias{religioes}
\alias{local_aquisicao}
\alias{produtos}
\alias{produtos_consumo_alimentar}
\alias{peso_volume}


\encoding{UTF-8}
\title{Extra tables for POF2008.2009 survey}
\description{
  That extra tables were implemented in the package to give you more
  autonomy with the package so as you could see some tables that are
  provided with the survey, in a data frame way. That tables are:
  \enumerate{
    
  \item  unidade_medida (Cadastro da Unidade de Medida POF 2008-2009)

  \item  unidade_medida_alimentar (Cadastro da Unidade de Medida do Consumo
   Alimentar POF 2008-2009)

  \item  religioes (Cadastro de Religioes POF 2008-2009)

  \item  local_aquisicao (Cadastro de Local de Aquisicao da POF 2008-2009)

  \item  produtos (Cadastro de Produtos POF 2008-2009)

  \item  produtos_consumo_alimentar (Cadastro de Produtos do Consumo Alimentar
   POF 2008-2009)

  \item  peso_volume (Cadastro de Peso ou Volume POF 2008-2009)
  }
  
}
\format{

  unidade_medida:
  \tabular{lll}{
  
    codigo \tab numeric \tab variable code \cr
  
    descricao \tab character \tab description\cr
  
  }

  unidade_medida_alimentar:
  \tabular{lll}{
  
    codigo \tab numeric \tab variable code \cr
  
    descricao \tab character \tab description\cr
  
  }

  peso_volume:
  \tabular{lll}{
  
   codigo \tab numeric \tab variable code \cr
  
   peso_volume \tab character \tab weight or volume\cr
    
  }
 
  produtos_consumo_alimentar:
  \tabular{lll}{
    codigo \tab numeric \tab variable code \cr

    descricao \tab character \tab description of a food\cr

    forma_preparo.1.sim.2.nao \tab numeric \tab tell if has a way of
    prepare or not

  }
 
  produtos:
  \tabular{lll}{

   quadro \tab character \tab tell from each frame comes the
   \code{codigo} field \cr

   grupo \tab numeric \tab ??? \cr
   
   codigo \tab numeric \tab variable code\cr

   produto \tab character \tab a product label \cr
   }
   
  religioes:
  \tabular{lll}{
  
    codigo \tab numeric \tab variable code \cr
  
    religiao \tab character \tab a religion label\cr
  
  }


  local_aquisicao:
  \tabular{lll}{
  
    codigo \tab numeric \tab variable code \cr
  
    descricao \tab character \tab description\cr
  
  }

 }
 
\source{The dictionaries were made based on the documentation of the
    PNAD survey available at \url{http://www.ibge.gov.br}.}
\keyword{datasets}