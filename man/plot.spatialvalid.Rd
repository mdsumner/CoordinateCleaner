\name{plot.spatialvalid}
\alias{plot.spatialvalid}

\title{
Plot Method for Class Spatialvalid
}
\description{
A set of plots to explore objects of the class \code{spatialvalid}. A plot to visualize the flags from CleanCoordinates
}
\usage{
\method{plot}{spatialvalid}(x, bgmap = NULL, clean = T, details = T, 
              pts.size = 1, font.size = 10, ...)}

\arguments{
  \item{x}{
an object of the class \code{spatialvalid} as from \code{\link{CleanCoordinates}}.
}
  \item{bgmap}{
an object of the class \code{SpatialPolygonsDataFrame} used as background map. Default = \code{\link{landmass}}
}
  \item{clean}{
logical.  If TRUE, non-flagged coordinates are included in the map.
}
  \item{details}{
logical. If TRUE, occurrences are colour-coded by the type of flag.
}
  \item{pts.size}{
numeric. The point size for the plot.
}
  \item{font.size}{
numeric. The font size for the legend and axes
}
  \item{\dots}{
additional arguments passed to other methods
}
}

\value{
A plot of the records flagged as potentially erroneous by \code{\link{CleanCoordinates}}.
}

\seealso{
\code{\link{CleanCoordinates}}
}
\examples{

exmpl <- data.frame(species = sample(letters, size = 250, replace = TRUE),
                    decimallongitude = runif(250, min = 42, max = 51),
                    decimallatitude = runif(250, min = -26, max = -11))

test <- CleanCoordinates(exmpl, species = "species", verbose = FALSE)

summary(test)
}
\keyword{ Visualisation }
