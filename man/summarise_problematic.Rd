% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_helper_analyze_data_to_estimate.R
\name{summarise_problematic}
\alias{summarise_problematic}
\title{Constructs a summary of problematic cases}
\usage{
summarise_problematic(list_of_problematic, len_ts)
}
\arguments{
\item{list_of_problematic}{a list having the structure as the output from
\code{view_problematic()}}

\item{len_ts}{length of the original time series (e.g. 45 if from 1970 to
2014)}
}
\value{
A list of the same length (counting only non-NULL elements) as
\code{list_of_problematic} containing the summary tables for each of the
six categories of failures as described in the "Description".
}
\description{
Constructs a summary of problematic cases given the output of
\code{view_problematic()}.
}
\details{
The summary is either grouped by state or energy source and has a maximum of
six components for the corresponding categories (already used in
\code{view_problematic()} ) describing what could possible go wrong. These
are:
\itemize{
\item{negatives: negative values for energy consumption not allowed}
\item{zeros: zero values for energy consumption possible, but annoying}
\item{missing values for raw consumption units}
\item{missing values for shares of energy consumption (mix): occurs e.g. if
divided by a sum of energy consumption which is zero (nothing produced,
recorded)}
\item{cases where cumulative capacities are zero, though the corresponding
resource is consumed are returned}
}
}
