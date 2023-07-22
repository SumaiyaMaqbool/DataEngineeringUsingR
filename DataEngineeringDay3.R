#Data Engineering Day 3
df1<-data.frame(c('ID','Name','Perc')) 
df1<-edit(df1)
df1<-data.frame(cbind('ID','Name','Perc'))
df1<-edit(df1)
df1=data.frame(cbind('ID','Name','Perc'))
df1<-edit(df1)
df1<-edit(df1)
View(df1)
names(df1)=c('ID','Name','Perc')
View(df1)

df2= data.frame(cbind('ID'=5))
View(df2)
df2= data.frame(cbind('ID'=2,'Status'='Enrolled','Year'=4))
View(df2)

#-----------------------------------
#df1
ID = c(1:3)
Name= c('Ali','Bader','Saif')
Perce= c(87,56,77)
df1= data.frame('ID'=ID,'Name'=Name,'Perce'=Perce)
(df1)
#df2
df2=data.frame(
  'ID' = c(2:5),
  'Status'= c('Grd','Grd','Enr','Enr'),
  'Year'= c(3,5,2,1)
  
  
)
View(df2)
#Merging Data Frames------
total <- merge(df1,df2,by='ID')
View(total)
# Try to find other ways
# You may notice the merging produces the matched
# rows, try to find a way that have all record
# but without duplicating data

#------------------------------------------
mydata = data.frame(Titanic)
View(mydata)
newdata<- mydata[which(mydata$Class=='Crew'& mydata$Survived=='Yes'),]
# To view dataset
newdata

newdata<- subset(mydata,mydata$Class=='Crew'& mydata$Survived=='Yes',
                 select=c(Class,Survived))
# filter data
newdata<- mydata[which(mydata$Age=='Child'& mydata$Survived=='Yes'),]
#The subset() function
newdata<- subset(mydata,mydata$Age=='Child'& mydata$Survived=='Yes' & mydata$Sex=='Female'  ,
                 select=c(Sex,Age,Survived))
# Random Samples (FALSE)=without replacement
mysample<- mydata[sample(1:nrow(mydata),32,replace=FALSE),]
# Random Samples (TRUE)=with replacement

mysample<- mydata[sample(1:nrow(mydata),50,replace=TRUE),]

#using SQL statement to manipulate data frame ---
library(sqldf)

newdf <- sqldf("select * from mydata where Class='3rd' order by Freq",row.names=TRUE)
newdf
