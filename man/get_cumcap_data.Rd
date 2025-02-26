% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_helper_generate_data_to_estimate_GET.R
\name{get_cumcap_data}
\alias{get_cumcap_data}
\title{Transform from raw cumulative capacities dataset to state aggregated version}
\usage{
get_cumcap_data(path_to_data, year_range = 1970:2018)
}
\arguments{
\item{path_to_data}{character string containing the path to the raw
cumulative generating capacities data'}

\item{year_range}{range of years for the returned dataset; e.g. 1970 to 2018
for the current energy application because we have energy consumption and
fuel prices for that period}
}
\value{
a dataset of aggregated cumulative generating capacites on state
level but with unaggregated technologies
}
\description{
Transform from raw cumulative capacities dataset to state aggregated version
}
