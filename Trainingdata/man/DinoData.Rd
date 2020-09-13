\name{DinoData}
\alias{DinoData}
\docType{data}
\title{
  Dataset of how dinosaur mass varies with femur length
}
\description{
  %%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("DinoData")}
\format{
  A data set with the following columns.
  \describe{
		\item{\code{Clade}}{a character vector}
		\item{\code{Genus}}{a character vector}
		\item{\code{Species}}{a character vector}
		\item{\code{FL}}{a double vector}
		\item{\code{Mass}}{a double vector}
		\item{\code{Time}}{a character vector}
		\item{\code{Formation}}{a character vector}
  }
}
\details{
  %%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
  O’Gorman EJ, Hone DWE (2012) Body Size Distribution of the Dinosaurs. PLoS ONE 7(12): e51925.
}
\references{
  %%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(DinoData)
  
DinoData$Clade <- factor(DinoData$Clade)   #Convert to factors

#Plot graph
plot(x=DinoData$FL, 
     y=DinoData$Mass, 
     pch=19, 
     col=DinoData$Clade,
     main="Dinosaur femur length vs body mass",
     xlab="Femur length (mm)",
     ylab="Mass (kg)"
)

#Add key
legend("topleft", 
       legend=unique(DinoData$Clade), 
       pch=19,
       col=unique(DinoData$Clade)
)

}
\keyword{datasets}

