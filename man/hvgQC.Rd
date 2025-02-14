% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{hvgQC}
\alias{hvgQC}
\title{Quality control}
\usage{
hvgQC(X, ncounts = 1000, ncells = 15, mtPerc = 15)
}
\arguments{
\item{X}{Count matrix or SingleCellExperiment.}

\item{ncounts}{An integer value. Defines the minimum reads required for a cell to be included in the analysis.}

\item{ncells}{An integer value. Defines the minimum cells required for a gene to be included in the analysis.}

\item{mtPerc}{A double value. Defines the minimum percent mitochondrial genes expression required for a cell to be excluded from the analysis.}
}
\value{
QC filtered SingleCellExperiment.
}
\description{
QC filter scRNA-seq expression data. Removes lowly expressed genes and cells. Also removes cells with high mitochondrial gene expression.
}
\examples{
# example code
## Generate example count data
X <- abs(matrix(round(rpois(2000*500, lambda=0.5),0), nrow=2000, ncol=500))
rownames(X) <- paste0('g', as.character(1:2000))

## Run splineHVG
QCres <- hvgQC(X)
}
\author{
Shreyan Gupta <xenon8778@tamu.edu>
}
