% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/patternrings2.R
\name{patternrings2}
\alias{patternrings2}
\title{Plot a ring chart using patterns and colors to fill the rings.}
\usage{
patternrings2(
  group1,
  group2,
  pct1,
  pct2,
  label1,
  label2,
  label.size1 = 4,
  label.size2 = 4,
  label.color1 = "black",
  label.color2 = "black",
  label.distance1 = 1.2,
  label.distance2 = 1.2,
  pattern.type1,
  pattern.type2,
  pattern.color1,
  pattern.color2,
  pattern.line.size1 = rep(10, length(group1)),
  pattern.line.size2 = rep(10, length(group2)),
  background.color1,
  background.color2,
  density1 = rep(10, length(group1)),
  density2 = rep(10, length(group2)),
  pixel = 20,
  pattern.type.inner = "blank",
  pattern.color.inner = "white",
  pattern.line.size.inner = 1,
  background.color.inner = "white",
  pixel.inner = 10,
  density.inner = 1,
  frame.color = "black",
  frame.size = 1,
  r1,
  r2,
  r3
)
}
\arguments{
\item{group1}{a vector of strings, containing the names of each slice for the inner ring.}

\item{group2}{a vector of strings, containing the names of each slice for the outer ring.}

\item{pct1}{a vector of non-negative numbers, containing percentages of each group for the inner ring.
The numbers must sum up to 100.}

\item{pct2}{a vector of non-negative numbers, containing percentages of each group for the outer ring.
The numbers must sum up to 100.}

\item{label1}{a vector of strings, giving the names for the slices shown in the ring chart for the inner ring.}

\item{label2}{a vector of strings, giving the names for the slices shown in the ring chart for the outer ring.}

\item{label.size1}{the font size of labels shown in the ring chart for the inner ring.}

\item{label.size2}{the font size of labels shown in the ring chart for the outer ring.}

\item{label.color1}{the color of labels shown in the ring chart for the inner ring.}

\item{label.color2}{the color of labels shown in the ring chart for the outer ring.}

\item{label.distance1}{the distance of labels from the border of the ring chart for the inner ring.}

\item{label.distance2}{the distance of labels from the border of the ring chart for the outer ring.}

\item{pattern.type1}{a vector of patterns to be filled in the slices for the inner ring. 
The pattern types include: 'blank', 'bricks', 'vdashes', 'hdashes', 'crosshatch','dots', 
'grid','hlines','nelines', 'nwlines', 'vlines', 'waves' and more.}

\item{pattern.type2}{a vector of patterns to be filled in the slices for the outer ring. 
The pattern types include: 'blank', 'bricks', 'vdashes', 'hdashes', 'crosshatch','dots', 
'grid','hlines','nelines', 'nwlines', 'vlines', 'waves' and more.}

\item{pattern.color1}{a vector of colors for the lines/dots of patterns for the inner ring.}

\item{pattern.color2}{a vector of colors for the lines/dots of patterns for the outer ring.}

\item{pattern.line.size1}{a vector of numeric values, the line size for the lines/dots of patterns for the inner ring.}

\item{pattern.line.size2}{a vector of numeric values, the line size for the lines/dots of patterns for the outer ring.}

\item{background.color1}{a vector of colors to be filled in the slices for the inner ring.}

\item{background.color2}{a vector of colors to be filled in the slices for the outer ring.}

\item{density1}{a numeric vector, the density for the lines/dots of patterns for the inner ring.}

\item{density2}{a numeric vector, the density for the lines/dots of patterns for the outer ring.}

\item{pixel}{a numeric value, the pixel resolution of ring chart.}

\item{pattern.type.inner}{a pattern to be filled in the inner circle.}

\item{pattern.color.inner}{the color for the lines/dots of the pattern.}

\item{pattern.line.size.inner}{the line size for the lines/dots of the pattern.}

\item{background.color.inner}{the color to be filled in the inner circle.}

\item{pixel.inner}{a numeric value, the pixel resolution of the inner circle.}

\item{density.inner}{a numeric vector, the density for the lines/dots of patterns of the inner circle.}

\item{frame.color}{the color for the borders of slices.}

\item{frame.size}{a numeric value, the line size for the borders of slices.}

\item{r1}{a numeric value, the inner radius of the inner ring.}

\item{r2}{a numeric value, the outer radius of the inner ring.}

\item{r3}{a numeric value, the outer radius of the outer ring.}
}
\value{
A ggplot object.
}
\description{
The \code{patternrings2} function is a tool for creating versatile ring charts 
by filling the rings with colors and patterns.
}
\details{
\code{patternrings2} function offers flexible ways of doing ring charts.
}
\examples{
library(patternplot)
library(png)
library(ggplot2)

group1<-c("Wind", "Hydro", "Solar", "Coal", "Natural Gas", "Oil")
pct1<-c(12, 15, 8, 22, 18, 25)
label1<-paste(group1, " \n ", pct1 , "\%", sep="")

group2<-c("Renewable", "Non-Renewable")
pct2<-c(35, 65)
label2<-paste(group2, " \n ", pct2 , "\%", sep="")

pattern.type1<-rep(c( "blank"), times=6)
pattern.type2<-c('grid', 'blank')
pattern.type.inner<-"blank"
pattern.color1<-rep('white', length(group1))
pattern.color2<-rep('white', length(group2))

background.color1<-c("darkolivegreen1", "white", "indianred",
                     "gray81",  "white", "sandybrown" )
background.color2<-c("seagreen", "deepskyblue")

density1<-rep(10, length(group1))
density2<-rep(10, length(group2))

pattern.line.size1=rep(6, length(group1))
pattern.line.size2=rep(2, length(group2))
pattern.line.size.inner=1

#Example 1: Two rings
g<-patternrings2(group1, group2, pct1,pct2, label1, label2, 
label.size1=3, label.size2=3.5, label.color1='black', label.color2='black',
label.distance1=0.75, label.distance2=1.4, pattern.type1, pattern.type2,  
pattern.color1,pattern.color2,pattern.line.size1, pattern.line.size2, 
background.color1, background.color2,density1=rep(10, length(group1)), 
density2=rep(15, length(group2)),pixel=10, pattern.type.inner, pattern.color.inner="black",
pattern.line.size.inner,  background.color.inner="white",  pixel.inner=6,  
density.inner=5, frame.color='black',frame.size=1,r1=2.45, r2=4.25, r3=5)
g<-g+annotate(geom="text", x=0, y=0, label="Earth's Energy",color="black",size=5)
g<-g+scale_x_continuous(limits=c(-6, 6))+scale_y_continuous(limits=c(-6, 6))
g

#Example 2: Pie in a ring
g<-patternrings2(group1, group2, pct1,pct2, label1, label2, label.size1=3, label.size2=3.5,
label.color1='black', label.color2='black', label.distance1=0.7, label.distance2=1.4, 
pattern.type1, pattern.type2,  pattern.color1,pattern.color2,pattern.line.size1, 
pattern.line.size2, background.color1, background.color2,density1=rep(10, length(group1)), 
density2=rep(15, length(group2)),pixel=10, pattern.type.inner, pattern.color.inner="black",
pattern.line.size.inner,  background.color.inner="white",  pixel.inner=1,  density.inner=2, 
frame.color='black',frame.size=1, r1=0.005, r2=4, r3=4.75)
g<-g+scale_x_continuous(limits=c(-6, 6))+scale_y_continuous(limits=c(-6, 6))
g
}
\seealso{
Function \code{imagerings2}
}
\author{
Chunqiao Luo (chunqiaoluo@gmail.com)
}
