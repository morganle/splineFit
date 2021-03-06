% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spl_Fit.R
\name{spl_Fit}
\alias{spl_Fit}
\title{Fitting a spline function from cardinal B-splines}
\usage{
spl_Fit(Arrivals, m, n_arrs, Tstart, Tend, kn, cyclic, c_init = NULL,
  pplot = NULL)
}
\arguments{
\item{Arrivals}{A vector of arrival times. If multiple days the days are appended and not sorted.}

\item{m}{A scalar number of days of arrival data}

\item{n_arrs}{A vector containint the number of arrivals on each observed day}

\item{Tstart}{The start of the period of observation}

\item{Tend}{The end of the period of observation}

\item{kn}{The number of knots on which to build the spline function}

\item{cyclic}{A TRUE/FALSE value stating whether the spline function should be constrained to be cyclic or not}

\item{c_init}{(optional) If provided this is a scalar that tell us initial constant value from which to start the search for the optimal spline coefficients.}

\item{plot}{(optional) If provided this is says whether to output a pplot or not. If you do not want a plot do not use this parameter, if you do make pplot=0}
}
\value{
Opt_Spl_Coeffs - The optimised spline coefficients

Knots - The knots on which the spline function was built
}
\description{
This function fits a spline function from cardinal B-splines and returns the optimal spline coefficients and the knot points it was built upon
}
\examples{
## Fitting the spline-based intensity given arrivals from a cyclic sinusoidal
data(Arrs)
data(n_Arrs)
m<-length(n_Arrs)
Tstart<-0
Tend<-24
kn<-50
cyclic=TRUE
spl_Fit(as.numeric(Arrs),m,as.numeric(n_Arrs),Tstart,Tend,kn,cyclic,pplot=0)
}
