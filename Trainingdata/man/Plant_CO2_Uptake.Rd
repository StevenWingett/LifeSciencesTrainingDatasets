\name{Plant_CO2_Uptake}
\alias{Plant_CO2_Uptake}
\docType{data}
\title{
Plant_CO2_Uptake
}
\description{
Comparison of species and heat treatment of CO2 concentration and uptake by plants
}
\usage{data("Plant_CO2_Uptake")}
\format{
  A data frame with 0 observations on the following 2 variables.
  \describe{
    \item{\code{Plant}}{an ordered factor with levels Qn1 < Qn2 < Qn3 < ... < Mc1 giving a unique identifier for each plant.}
    \item{\code{Type}}{a factor with levels Quebec Mississippi giving the origin of the plant}
    \item{\code{Treatment}}{a factor with levels nonchilled chilled}
    \item{\code{conc}}{a numeric vector of ambient carbon dioxide concentrations (mL/L).}
    \item{\code{uptake}}{a numeric vector of carbon dioxide uptake rates (umol/m^2 sec).}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
Potvin, C., Lechowicz, M. J. and Tardif, S. (1990) “The statistical analysis of ecophysiological response curves obtained from experiments involving repeated measures”, Ecology, 71, 1389–1400.
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Plant_CO2_Uptake)
## maybe str(Plant_CO2_Uptake) ; plot(Plant_CO2_Uptake) ...
}
\keyword{datasets}
