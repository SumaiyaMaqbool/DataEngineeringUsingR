#DataEngineering Day 2
# dataframe:

My_Matrix = matrix((1:9),nrow=3,ncol=3)
My_Matrix
df_matrix = data.frame(My_Matrix)
df_matrix
View(df_matrix)

#xlxs
#Data Input/Output ----
#For Importing data file you may use Import Dataset from File Menu 

library(xlxs) #Does not work because of a Java Runtime
#Alternative to xlsx library rio
install.packages("rio")
library(rio)
#export (data_frame,'name.xlsx')
export(mtcars,"mtcars1.csv")
export(mtcars,"mtcars1.xlsx")
export(list(mtcars))

#-----------
# Name Matrix
# Exercise: Create a matrix of 5 students scores in three subjects ----
# make sure the numbers you get are integer without decimal points 
#    Math   Phys  Bio Total   Percent
# Ali
# Badar
# Saif
# Total 
students = c("Ali","Saif","Badar") 
Marks= c()

cells<-c(99,88,75,70,92,72,84,88,89)
my_students_matrix <- matrix( cells,nrow=4, ncol=4, byrow=TRUE,dimnames= list(rnames,cnames))
rnames<-c("Ali","Saif","Badar","Total")
cnames<-c('Math','Phys','Bio','Total')
my_students_matrix

my_students_matrix=cbind(my_students_matrix,colSums(my_students_matrix))
my_students_matrix=rbind(my_students_matrix,rowSums(my_students_matrix))

#--------------------------------------

#Ali
ali = rnorm(3,45,4)
#badar
badar = rnorm(3,66,3)

#Saif
saif=rnorm(3,80,9)
#studentmatrix
studentmatrix = rbind(ali,badar,saif)
studentmatrix
#total 
studentmatrix=cbind(studentmatrix,'Total'=rowSums(studentmatrix))
studentmatrix=rbind(studentmatrix,'Total'=colSums(studentmatrix))

studentmatrix=cbind(studentmatrix,'Percent'=studentmatrix[,4]/300*100)

cnames->c("Math","Pyhs","Bio")
rnames->c("Ali","Badar","Saif")

colnames(studentmatrix)<- cnames
rownames(studentmatrix)<- rnames
studentmatrix=edit(studentmatrix)


#drop(studentmatrix)
#total_percent->studentmatrix['Total']/300

# Save the result in the excel file 

#-------------------------------------------------
#Adding New rows/columns contain properties of row/column
