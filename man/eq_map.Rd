% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/leaflet_map.R
\name{eq_map}
\alias{eq_map}
\title{\code{eq_map()} generates a leaflet map with a circle at the location of each earthquake
and should be used with the output of \code{\link{eq_location_clean}}.
Works with any dataframe with \code{DATE}, \code{LONGITUDE}, \code{LATITUDE} and \code{MAG} columns.}
\usage{
eq_map(data, annot_col = "DATE")
}
\arguments{
\item{data}{dataframe with \code{DATE}, \code{LONGITUDE}, \code{LATITUDE} and \code{MAG} columns.}

\item{annot_col}{character vector, indicating the column information to be displayed inside of the popup.}
}
\value{
A map with earthquakes as circles.
}
\description{
\code{eq_map()} generates a leaflet map with a circle at the location of each earthquake
and should be used with the output of \code{\link{eq_location_clean}}.
Works with any dataframe with \code{DATE}, \code{LONGITUDE}, \code{LATITUDE} and \code{MAG} columns.
}
\examples{

\dontrun{

# Full example.
eq_clean_data() \%>\%
      dplyr::filter(!is.na(TOTAL_DEATHS)) \%>\%
      dplyr::select(DATE, YEAR, COUNTRY, REGION, LONGITUDE, LATITUDE, MAG, TOTAL_DEATHS) \%>\%
      tidyr::drop_na() \%>\%
      dplyr::filter(COUNTRY == "MEXICO" & YEAR >= 2000) \%>\%
      eq_map()
}

}
