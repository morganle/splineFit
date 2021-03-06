% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spl.R
\name{spl}
\alias{spl}
\title{The spline-based arrival rate function}
\usage{
spl(t, knots, c)
}
\arguments{
\item{t}{A scalar or vector of times at which the function will be evaluated}
}
\value{
The value of the spline function at t is returned
}
\description{
This function returns the value of the spline at time t.
}
\examples{
## spline-based intensity defined on [0,10]
d<-3      #spline function degree
knots<-seq(-3,13,by=1)
n<-length(knots)-(d+1)
c<-runif(n,1,5)
t<-1.5
spl(t,knots,c)  # the spline-based intensity evaluated at time 1.5
t<-seq(0,10,by=0.01)
plot(t,spl(t,knots,c),type="l") # a plot of the spline-based intensity over the interval [0,10]
}
