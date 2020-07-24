\name{Cuttlefish_Buoyancy}
\alias{Cuttlefish_Buoyancy}
\docType{data}
\title{
Cuttlefish_Buoyancy
}
\description{
Experiment to test ocean acidification and feeding on cuttlefish buoyancy
}
\usage{data("Cuttlefish_Buoyancy")}
\format{
  Data has following columns
  \describe{
  \item{\code{tank}}{string naming tank}
    \item{\code{colour}}{string recording colour}
    \item{\code{label}}{string of cuttlefish regarding feeding}
    \item{\code{ID}}{a string of fish ID}
    \item{\code{treatment}}{a string recording treatment type}
    \item{\code{hatching
}}{numeric vector of hatched or not}
    \item{\code{hatching_Date}}{a numeric vector measuring hatched or no}
    \item{\code{days_Until_hatching_trt}}{numeric vector}
    \item{\code{sampling_date}}{string of date}
    \item{\code{floating
}}{a numeric vector of floating or not}
    \item{\code{feeding
}}{a numeric vector of feeding or not}
    \item{\code{weight
}}{a numeric vector of cuttlefish weight}
    \item{\code{area
}}{a numeric vector of fish area}
    \item{\code{density
}}{a numeric vector fish area}
  }
}
\details{
Tank: (5 control); (5 high CO2)

Colour: (R, Non-fed cuttlefish with the respective cuttlebone sampled once the animal started floating); (G, Fed cuttlefish with the respective cuttlebone sampled at the same time as a cuttlefish from the previous treatment started floating); (W, Fed cuttlefish with the respective cuttlebone sampled after 25 to 30 days)

Label: Number of the cuttlefish, regarding the feeding treatment

ID:ID of the cuttlefish, regarding the tank and the feeding treatment

Treatment: (A, High CO2); (C, Control)
Hatching:(1, Hatched cuttlefish); (0, Unhatched cuttlefish)

Hatching_Date: Date of hatching

Days_Until_Hatching_trt: Exposure time of the eggs to the respective CO2 treatment until hatching

Sampling_Date: Date of the cuttlebone sampling

Floating: (1, Floater); (0, Sinker)

Feeding: (1, Fed); (0, Non-fed)

Weight: Weight of the cuttlebone in mg

Area: Area of the cuttlebone in mm2

Density: Density of the cuttlebone obtained by the equation Weight/Area, represented in mg/mm2
}
\source{
https://doi.org/10.3390/biology9070147
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Cuttlefish_Buoyancy)
## maybe str(Cuttlefish_Buoyancy) ; plot(Cuttlefish_Buoyancy) ...
}
\keyword{datasets}
