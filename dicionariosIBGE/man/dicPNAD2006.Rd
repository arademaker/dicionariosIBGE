\name{dicPNAD2006}
\docType{data}

\alias{dicPNAD2006}

\encoding{UTF-8}
\title{Data set for PNAD 2006 survey}
\description{
  This dataset contains 4 data.frames.

  The two data.frames, \link{dicdom2006} and \link{dicpes2006}, are data
  dictionaries used by the fuction \link{le.pesquisa} for reading the
  two microdada files provided by IBGE.

  The two data.frames, \link{dicdom2006supl} and \link{dicpes2006supl},
  are data dictionaries used by the fuction \link{le.pesquisa} for
  reading the two microdada files from the reconsidered survey provided
  by IBGE. If you want to see all the variables used in the survey use
  these dictionaries.

}
\format{
  A data set with 4 different data frames:
  \enumerate{
  \item dicdom2006 (dictionary with domiciles record from PNAD 2006 survey)

  \item dicpes2006 (dictionary with people record from PNAD 2006 survey)
  
  \item dicdom2006supl (dictionary with domiciles record from PNAD 2006 (reconsidered) survey)

  \item dicpes2006supl (dictionary with people record from PNAD 2006 (reconsidered) survey)
  }
}
\source{The dictionaries were made based on the documentation of the
    PNAD survey available in the CD's made by IBGE.}
\keyword{datasets}