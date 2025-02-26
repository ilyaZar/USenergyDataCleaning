% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_helper_generate_data_to_estimate_COMPUTE.R
\name{generate_data_neg_adjusted}
\alias{generate_data_neg_adjusted}
\title{Adjust negative values for observed (megawatt) counts.}
\usage{
generate_data_neg_adjusted(data, n_env, change_sign_avail = FALSE)
}
\arguments{
\item{data}{old data set with negative entries for raw megawatts
(currently affected are onlyh \code{NUEGB} and \code{renewables})}

\item{n_env}{environment containing the names of variables of energy
sources}

\item{change_sign_avail}{logical with default \code{FALSE}; if \code{TRUE},
then the variables "xxx_avail" (e.g. "coal_avail") get their sign switched
from zero to one, whenever there is a negative entry (since the negative
value becomes positive via \code{abs()}, the corresponding availability
dummy must be equal to 1, not zero)}
}
\value{
new data set which is the old but with the adjustments made as
outlined in the 'Description'.
}
\description{
Some of the observed megawatts contain negative entries which is strange.
This is the case for \code{NUEGB} (nuclear power) and \code{renewables}. The
current workaround is to switch the sign, assuming that this is wrong data
entry and the value should actually be positive. When the sign is switched,
the corresponding availability value smust be set to 1 (instead of zero, as
it was before). An alternative would is to set them to zero with no
adjustment to the availability dummy (stays at zero).
}
