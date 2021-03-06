% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagering1.R
\name{imagering1}
\alias{imagering1}
\title{Plot a ring chart using images to fill the ring.}
\usage{
imagering1(
  group1,
  pct1,
  pattern.type1,
  pattern.type.inner,
  frame.color = "black",
  frame.size = 1,
  label1,
  label.size1 = 4,
  label.color1 = "black",
  label.distance1 = 1.2,
  r1,
  r2
)
}
\arguments{
\item{group1}{a vector of strings, containing the names of each slice.}

\item{pct1}{a vector of non-negative numbers, containing percentages of each group.
The numbers must sum up to 100.}

\item{pattern.type1}{a list of objects returned by \code{readPNG} and \code{readJPEG} used to fill the ring.}

\item{pattern.type.inner}{an object returned by \code{readPNG} and \code{readJPEG} used to fill the inner circle.}

\item{frame.color}{the color for the borders of the ring.}

\item{frame.size}{a numeric value, the line size for the borders of the ring.}

\item{label1}{a vector of strings, giving the names for the slices shown in the ring chart.}

\item{label.size1}{the font size of labels shown in the ring chart.}

\item{label.color1}{the color of labels shown in the ring chart.}

\item{label.distance1}{the distance of labels from the border of the ring chart.}

\item{r1}{a numeric value, the inner radius of the ring.}

\item{r2}{a numeric value, the outer radius of the ring.}
}
\value{
A ggplot object.
}
\description{
The \code{imagering1} function is a tool for creating versatile ring charts 
by filling the ring with images.
}
\details{
\code{imagering1} function offers flexible ways of doing ring charts.
}
\examples{
#Example 1
library(patternplot)
library(png)
library(ggplot2)
location<-gsub('\\\\','/',tempdir(), fixed=TRUE)
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="darkgreen",pixel=6, res=4)
FarWest<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="darkcyan",pixel=6, res=4)
GreatLakes<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="chocolate",pixel=6, res=4)
Mideast<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="cadetblue1",pixel=6, res=4)
NewEngland<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="darkorchid",pixel=6, res=4)
Plains<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="yellowgreen",pixel=6, res=4)
RockyMountain<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="hotpink",pixel=6, res=4)
Southeast<-readPNG(paste(location,'/',"blank",".png", sep=''))
pattern(type="blank", density=1, color='white', pattern.line.size=1, 
background.color="lightslateblue",pixel=6, res=4)
Southwest <-readPNG(paste(location,'/',"blank",".png", sep=''))


group1<-c('New_England','Great_Lakes','Plains','Rocky_Mountain', 'Far_West',
'Southwest', 'Southeast', 'Mideast')
pct1<-c( 12, 11, 17, 15, 8, 11,  16,  10)
label1<-paste(group1, " \n ", pct1, "\%", sep="")

pattern.type1<-list(NewEngland, GreatLakes,Plains,  RockyMountain, FarWest,
Southwest, Southeast,  Mideast)
pattern.type.inner<-readPNG(system.file("img", "USmap.png", package="patternplot"))

imagering1(group1, pct1,  pattern.type1, pattern.type.inner, frame.color='black',
frame.size=1.5, r1=3, r2=4,label1, label.size1=4,label.color1='black', label.distance1=1.2)



}
\seealso{
Function \code{patternring1}
}
\author{
Chunqiao Luo (chunqiaoluo@gmail.com)
}
