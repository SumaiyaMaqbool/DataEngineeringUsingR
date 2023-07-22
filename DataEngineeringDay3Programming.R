# condition functions using if, else if and else
TotalMark <- 76
 if (TotalMark<=100&TotalMark>=90){
   print("A")
 } else if(TotalMark<=89.9&TotalMark>=80){
     print("B")
 } else if(TotalMark<=79.9&TotalMark>=70){
   print("C")
 } else if(TotalMark<=69.9&TotalMark>=60){
   print("D")
 } else if(TotalMark<=59.9&TotalMark>=50){
     print("E")
   } else{print("F")}
#---------------------------------------------------
# while loop 
number_one= as.integer(readline(prompt ="Enter the first number: ")) 
number_two= as.integer(readline(prompt ="Enter the second number: ")) 
sumNum=0
i=0

while (number_one<=number_two){
  sumNum=number_one*number_two
  print(sumNum)
}
#---------------------------------------------------
#for loop
mat <- matrix(1:25,nrow =5)
for (row in 1:nrow(mat)){
  for (col in 1:ncol(mat)){
    print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
  }
}
#----------------------------------------------------
