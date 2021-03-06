% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semproducible.r
\name{code_template}
\alias{code_template}
\title{Code template for R code}
\usage{
code_template()
}
\value{
a character string with the code template.
}
\description{
Default R code template used by \code{\link{semproducible}} when generating
the code.
}
\details{
For example, variables in the template code are replaced with the actual
values during execution.

The following variables are placeholders and will be replaced with the
actual values:

\code{\%\%FORMULA\%\%} = lavaan formula.

\code{\%\%OBSERVATIONS\%\%} = number of observations of the actual data.

\code{\%\%TARGET\%\%} = variable name of the covariance matrix.

\code{\%\%VARIABLES\%\%} = column names (variable names) of
the covariance matrix.

\code{\%\%VALUES\%\%} = actual values of the covariance matrix.

\code{\%\%LAVAAN_CALL\%\%} = lavaan function call.
}
\examples{
\dontrun{
# Create random data.
data <- data.frame(x = rnorm(100), y = rnorm(100))

# Modify code template.
template <- paste(code_template(), "\\n# A comment placed at end of code")

# Generate R code with the template.
code <- semproducible(data, formula="y ~ x", template = template)
}
}
