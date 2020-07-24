\name{Brain_Bodyweight}
\alias{Brain_Bodyweight}
\docType{data}
\title{
Brain_Bodyweight
}
\description{
Brain and Bodyweight values of a number of animals, domestic and wild, looking for correlation

}
\usage{data("Brain_Bodyweight")}
\format{
  Data has following columns
  \describe{
    \item{\code{Species}}{a string of species name}
    \item{\code{Category}}{a string putting animals into three groups: wild, domesticated and extinct}
    \item{\code{Body.weight.kg}}{a numeric vector of bodyweight in kg}
    \item{\code{Brain.weight.g}}{a numeric vector of brain weight in g}
    \item{\code{Log.body.weight.kg}}{a numeric vector of logged bodyweight}
    \item{\code{log.brain.weight.g}}{a numeric vector of logged brain weight}
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
data(Brain_Bodyweight)
## maybe str(Brain_Bodyweight) ; plot(Brain_Bodyweight) ...
}
\keyword{datasets}
