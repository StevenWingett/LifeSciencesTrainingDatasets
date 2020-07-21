\name{Modern_Pollen_Plant_Diversity_Relationships}
\alias{Modern_Pollen_Plant_Diversity_Relationships}
\docType{data}
\title{
Modern_Pollen_Plant_Diversity_Relationships
}
\description{
Varied test on woodland and herbaceous plants trying to explain evolutionary histories
}
\usage{data("Modern_Pollen_Plant_Diversity_Relationships")}
\format{
  A data frame possess following columns.
  \describe{
    \item{\code{Pollen.type}}{a string recording pollen type}
    \item{\code{Growth.form}}{a string recording plant belonging to either Herbaceous or Woody taxa}
    \item{\code{AM.mycorrhiza
}}{a numeric vector of amount of fungal growth of this type}
    \item{\code{EM.mycorrhiza
}}{a numeric vector of amount of fungal growth of this type}
    \item{\code{Ericoid.mycorrhiza}}{a numeric vector of amount of fungal growth of this type}
    \item{\code{Clonality}}{a numeric vector of reproduction type}
    \item{\code{Seed.weight.mg}}{a numeric vector recording seed weight in miligrams}
    \item{\code{Height.m}}{a numeric vector in meters}
    \item{\code{LDMC.mg.g}}{a numeric vector of leaf dry matter content}
    \item{\code{SNPS}}{a numeric vector of number of single nucleotide polymorphisms}
    \item{\code{SLA.mm2.mg)}}{a numeric vector recording specific leaf area}
    \item{\code{L}}{a numeric vector storing Ellenberg light numbers}
    \item{\code{T}}{a numeric vector storing Ellenberg temperature}
    \item{\code{K}}{a numeric vector storing Ellenberg climatic continentality}
    \item{\code{F}}{a numeric vector storing Ellenberg soil humidity/moisture}
    \item{\code{R}}{a numeric vector of Ellenberg soil reaction}
    \item{\code{N}}{a numeric vector of Ellenberg nutrient numbers}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
https://doi.org/10.3389/fevo.2020.00207
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Modern_Pollen_Plant_Diversity_Relationships)
## maybe str(Modern_Pollen_Plant_Diversity_Relationships) ; plot(Modern_Pollen_Plant_Diversity_Relationships) ...
}
\keyword{datasets}
