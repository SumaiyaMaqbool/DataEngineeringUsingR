#Day 1 Coding 
x<-'r'
class(x)
x= c('r','t')
x1= c(3.5,45)
c(TRUE,FALSE)->X2
#-----------------------------
temps= c(72,71,68,73,69,75,71)
#to name each element in the list
names(temps)=c('Sun','Mon','Tue','Wed','Thurs','Fri','Sat')
# trying to print the first element in the list using index
temps[1]
#To find the total number of elements in the variable temps
length(temps)
#To print the elements from 3 to 6
temps[3:6]
#Another way
temps[c(3:6)]
#mean temps
mean(temps)
#min temps
min(temps)
#max temps
max(temps)
#median temps
median(temps)
#Square temps
sqrt(temps)
#Multiple by 4 
temps*4
#Add 10
temps+1
#
temps[(temps > 70)|(temps < 50)]
temp = c(34,54,23,76,78,89,3)
temp70=temp[(temp > 69)&(temp < 80)]
temp70

tempsNo70 = temp[temp<70 | temp>79]
tempsNo70

temps['Wed']

# filtering data
Temp_weekend=temps[c('Fri','Sat')] 
Temp_weekdays=temps[c('Sun','Mon','Tue','Wed','Thurs')] 
# To print all the elements/data without the ones mentioned in the code below.
temp01=temps[!names(temps)%in% c('Mon','Tue')]
temp01

#Exercises
#1 math exercise two to the power of five
two_to_power_five= 2**5
two_to_power_five

#2 assing values to the variable 
stock.prices = c(23,27,23,21,34)
stock.prices

#3 naming the element in the variable
names(stock.prices)=c('Mon','Tue','Wed','Thurs','Fri')
stock.prices

#4 finding mean
mean(stock.prices)

#5
over.23 = stock.prices>23
over.23

#6
over.23 = stock.prices[stock.prices>23]
over.23

#7 print the highest value with its name
#a--name with value
stock.prices[stock.prices==max(stock.prices)]
#b--name without the value 
names(stock.prices[stock.prices==max(stock.prices)])
#c--value without the name
max(stock.prices)

#8


#-------------------

y<- matrix(1:20, nrow=5, ncol=4)
y
cells<-c(1,26,24,68)
rnames<-c('R1','R2')
cnames<-c('C1','C2')

mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,dimnames= list(rnames,cnames))

colnames(mymatrix)<- cnames

mymatrix*mymatrix

# 
X<- matrix(1:6, nrow=2, ncol=3)
X

Z<-matrix(1:6, nrow=3, ncol=2)
Z
#--- Matrix multiplication 
M1=X%*%Z
M1
M2=Z%*%X
M2
#---Matrix Subscript
M2[,1]
M2[2,]
#-----------------------
