\name{ec2stop.reservation}
\alias{ec2stop.reservation}
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ec2stop.reservation(reservation.id)
}
\arguments{
  \item{reservation.id}{
%%     ~~Describe \code{reservation.id} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
http://docs.amazonwebservices.com/AWSEC2/latest/CommandLineReference
}
\author{
Whit Armstrong
}
}


\seealso{
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(reservation.id) {
    instances <- instances.from.reservation(reservation.id)
    ans <- list()
    for(inst in instances[,"InstanceID"]) {
        ans[[inst]] <- ec2stop.instance(inst)
    }
    do.call(rbind,ans)
  }
}
\keyword{utilities}