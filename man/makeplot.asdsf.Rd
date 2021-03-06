% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeplot.asdsf.R
\name{makeplot.asdsf}
\alias{makeplot.asdsf}
\title{Plot the Standard Deviation of Split Frequencies over the course of an MCMC.}
\usage{
makeplot.asdsf(chains, burnin = 0, window.size = 20, min.freq = 0)
}
\arguments{
\item{chains}{A list of rwty.chain objects.}

\item{burnin}{The number of trees to eliminate as burnin. Defaults to zero.}

\item{window.size}{The number of trees between each point at which the ASDSFs is calculated (note, specified as a number of sampled trees, not a number of generations)}

\item{min.freq}{The minimum frequency for a node to be used for calculating ASDSF.}
}
\value{
output A cumulative plot of ASDSF across all chains
}
\description{
This function takes two or more rwty.chain ojects and returns a plot of ASDSF as the run progresses.  
The solid line with points shows the Average Standard Deviation of Split Frequences at the current generation
The grey ribbon shows the upper and lower 95% quantiles of the SDSFs at the current generation
}
\examples{
\dontrun{
data(fungus)
p <- makeplot.asdsf(fungus, burnin = 20)
p
}
}
\keyword{ASDSF,}
\keyword{MCMC,}
\keyword{cumulative}
\keyword{phylogenetics,}
