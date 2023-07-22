add_num<-function(num1,num2){
  print(num1+num2)
  
}
x=add_num(4,5)
x
#---------------------------
#Exercise
#Write a function to find the mean and sd of a numeric variable
mean_sd <- function(vec){
  print (mean(vec))
  print(sd(vec))
 }
vec = as.integer(rnorm(10)) 
mean_sd(vec)
#---------------------------------------
pairs(Titanic)
