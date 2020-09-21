\name{Child_Variants}
\alias{Child_Variants}
\docType{data}
\title{
Child_Variants
}
\description{
Record of position and content of DNA mutations in children
}
\usage{data("Child_Variants")}
\format{
  Data contains the following columns
  \describe{
    \item{\code{CHR}}{string recording the chromosome}
    \item{\code{POS}}{a numeric vector of gene position on chromosome}
    \item{\code{dbSNP}}{a string DB identifier for the dbSNP database}
    \item{\code{REF}}{a string of reference sequence}
    \item{\code{ALT}}{a string of alteranate sequence}
    \item{\code{QUAL}}{a numeric vector of mutation quality}
    \item{\code{GENE}}{a string of gene name}
    \item{\code{ENST}}{a string consiting of the Ensembl Transcript ID}
    \item{\code{MutantReads
}}{a numeric vector of mutant reads}
    \item{\code{COVERAGE
}}{a numeric vector of coverage}
    \item{\code{MutantReadPercent
}}{a numeric vector of mutant read percent}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
## Two scripts are provided, demonstrating how to perform a simple analysis and produce graphs in:
## base R in R/Child_Variants_Script.R
## Tidyverse in  R/Child_Variants_Tidyverse_Script.R

data(Child_Variants)
## maybe str(Child_Variants) ; plot(Child_Variants) ...
}
\keyword{datasets}
