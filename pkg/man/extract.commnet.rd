\name{extract.commnet}
\alias{extract.commnet}
\encoding{UTF-8}
\title{Extract a subnetwork of a communication network}
\description{Extract a subnetwork of a communication network of all people who used a certain term in the subject or content.}
\usage{extract.commnet(forest,terms,apply.on,list)}
\arguments{
\item{forest}{A matrix with five columns. Result of \code{makeforest}.}
\item{terms}{A character vector containing the terms for which networks should be extracted.}
\item{apply.on}{Should the function be applied on \code{subjects} or \code{content}?}
\item{list}{Should the function be applied on the \code{rhelp} or \code{rdevel} mailing list?}
}
\value{Prints \code{Done} when finished. Saves an \code{.rda} file named \code{net_terms} in the subdirectory \code{list/apply.on}}
\author{Angela Bohn \email{angela.bohn at gmail.com}}
\examples{
forest <- rbind(
c(1,1,"PersonA","[R] Question on rhelp","Hello, I have a question...")
,c(2,1,"PersonB","[R] Question on rhelp","This is the answer")
,c(3,2,"PersonC","[R] Question on rdevel","Dear all,...")
,c(4,2,"PersonD","[R] Question on rdevel","Answer")
)
terms <- c("help")
apply.on <- "subjects"
list <- "rhelp"
dir.create("rhelp")
dir.create("subjects")
extract.commnet(forest,terms,apply.on,list)
}