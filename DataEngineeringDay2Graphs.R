#Data Engineering Day 2
#Graphs 
#--------------------
#Assing a data frame
df<-mtcars


# ggplot2
library(ggplot2)
varnorm = as.integer(rnorm(200,4,3))
varunif= as.integer(runif(200,1,7))
count=rnorm(200,10,5)
df = data.frame(varnorm,varunif,count)

#Looking at the data frame structure; number of columns and its types
str(df)

#Summary
summary(df)
#histogram pass a column straight into the hist() 
hist(varnorm)

#
#
#Using ggplot, lots of ability to customize , but bit more complicated!
ggplot(data= df,aes(varnorm))+geom_histogram()
#Customizing qplot
qplot(data= df,x=varnorm, geom='histogram', xlim=c(0,15), color='red')

#
qplot(x=varnorm,data= df, geom='histogram',fill=I('blue'),alpha=0.1)

#
#ggplot(data,aesthetics)
pl<-ggplot(data=df,aes(x=varnorm))
pl+geom_histogram()

#add colors
pl+ geom_histogram(binwidth = 1,color='red',fill='green',alpha=0.5)+xlab('normal distrbution')+ylab('occurences')+ggtitle('histogram normal distrbution')

#line types
pl<-ggplot(data=df,aes(x=varnorm))
pl+ geom_histogram(binwidth = 1,color='red',fill='blue',alpha=0.5, linetype='dotted')+xlab('normal distrbution')+ylab('occurences')+ggtitle('histogram normal distrbution')

#advanced aesthetics
pl<-ggplot(data=df,aes(x=varnorm))
pl+ geom_histogram(binwidth = 1,aes(fill=factor(varnorm)))+xlab('normal distrbution')+ylab('occurences')+ggtitle('histogram normal distrbution')

