\name{le.pesquisa}
\alias{le.pesquisa}

\title{Function that reads microdata from the IBGE survey}
\description{
 Performs a block read, recovering only the wanted variables from the
 IBGE surveys.  
}
\usage{
le.pesquisa(dicionario, pathname.in, codigos, rotulos = NULL, tbloco = 2000)
}

\arguments{
  \item{dicionario}{
  A data frame with 4 or 6 columns, supplied with this package. Contains
  the identification and description of all variables contained in the
  microdata file as well as other necessary information for
  reading. Each file must have a specific microdata dictionary.
}
  \item{pathname.in}{
  The name of the file which the data are to be read from. 
}
  \item{codigos}{
  Array of characters with codes of the wanted variables to be read, as
  specified in dictionary.
}
  \item{tbloco}{
  Integer that indicates the block size read. If not specified will be
  read in 2000 lines ever, an appropriate amount of a RAM 512MB
  computer. For a computer with less than 512MB of memory, \code{tbloco}
  must be less than 2000. For a machine with more 512MB of memory,
  \code{tbloco} may be larger than 2000, reducing the read time.
}
  \item{rotulos}{
  A optional variable formed by a data frame with 3 columns, supplied
  with this package. Contains the length and initial information all
  categorical variables contained in the microdata file.
}
}
\details{
The \code{le.pesquisa} allows the reading of the microdata household
surveys of IBGE, as the PNAD and PME. the microdata are files of text
type, where the columns of data are arranged side by side without any
separation. In fact, this function can be used to read any text file
data that is organized in the same format, it is enough to provide a
desired dictionary data file. The dictionaries of PNAD and PME are
provided by IBGE in this package.
To read more then 20 variables of the people PNAD, it is recommended
that your computer has at least 1GB of memory.
}
\value{
  As a result of the reading is given an data frame  
  only with the chosen variables and the number of rows from the
  original microdata. The names of the data frame columns
  are contained in the \code{codigos} argument .
}
\references{
  See the original le.pesquisa from IBGEPesq package available
  at \url{http://www.ibge.gov.br}.
}

\author{
  Alexandre Rademaker \email{alexandre.rademaker@fgv.br}

  Rafael F. Haeusler \email{rafael.f.haeusler@gmail.com}
}

\examples{
 \dontrun{
     library(dicionariosIBGE)
     data(dicPNAD2009)
    
     # Set this \code{path} to point to the microdata file:
     dados <- le.pesquisa(dicionario=dicdom2009,
                          pathname.in=path,
                          codigos=dicdom2009[c(4:12),2])

     #with \code{rotulos} != NULL
     # Set this \code{path} to point to the microdata file:
     dados <- le.pesquisa(dicionario=dicdom2009,
                          pathname.in=path,
                          codigos=dicdom2009[c(4:12),2],rotulos=rotdom2009)
                           
                          
    }
}
\keyword{read.survey}

