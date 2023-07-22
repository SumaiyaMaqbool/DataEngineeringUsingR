library(ggplot2)
DataF<- mtcars
View(DataF)
#
qplot(wt,mpg,data=DataF)
#
qplot(wt,mpg,data=DataF,color=cyl)
#
qplot(wt,mpg,data=DataF,size=cyl)
#
qplot(wt,mpg,data=DataF,size=cyl,color=cyl)

#------------------------------------------

#Show 4 features (this gets messy)
qplot(wt,mpg,data=DataF,size=cyl,color=hp,alpha=0.6)
#
plt<- ggplot(data=DataF,aes(x=wt,y=mpg))
plt+geom_point()
#
plto<- ggplot(data=DataF,aes(x=wt,y=mpg))
plto+geom_point(aes(color=cyl))
