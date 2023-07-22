# Importing librarys
#library('ggvis')
#install.packages(ggvis)
library('tidyverse')
library('ggplot2')

#----------------------
df = data.frame(Titanic) # assigning and converting the dataset into a data frame
View(df)                 # View the dataset 

#----------------------

head(df,10) # printing the first 10 rows of the dataset

class(df)   # viewing the dataset type or to double check if the dataset have been converted into a dataframe 

str(df)     # to view the structure of the dataset as total number of observations, number of columns and etc,

summary(df) # to get summary of each column in the dataset


colSums(is.na(df)) # to view the total number of NA values in each column in the dataset

# ceating a subtable according to gender and their classes..... Corresponding table :

(xt <- xtabs(Freq ~ Survived + Class + Sex, df, subset = Age=="Adult"))
# Alternatively, a mosaic plot :
mosaicplot(xt[,,"Male"], main = "Total number of adult male from all classes according to their survival", 
           color=TRUE)
(xt <- xtabs(Freq ~ Survived + Class + Sex, df, subset = Age=="Adult"))
# Alternatively, a mosaic plot :
mosaicplot(xt[,,"Female"], main = "Total number of adult Female from all classes according to their survival", 
           color=TRUE)

(xt2 <- xtabs(Freq ~ Survived + Class + Sex, df, subset = Age=="Child"))
# Alternatively, a mosaic plot :
mosaicplot(xt[,,"Male"], main = "Total number of child male from all classes according to their survival", 
           color=TRUE)



# library()
#ggplot(data = df) +
#  geom_mosaic(aes(x = product(df$Survived, df$Class)), 
#                  fill = df$Survived) +
#  geom_mosaic_text(aes(x = product(df$Survived, df$Class)), 
#                       label = after_stat(.wt))
#
#par(op)
#boxplot(df$Freq~df$Sex)

#mosaicplot(df, main = "Survival on the Titanic", color = TRUE)
## Formula interface for tabulated data:
#mosaicplot(~ Sex + Age + Survived, data = df, color = TRUE)

#ggplot(data = df) +
#  geom_mosaic(aes(x = df(Freq ~ Survived + Class + Sex), 
#                 fill = subset = Age=="Adult")) +
#  geom_mosaic_text(aes(x = df(Freq ~ Survived + Class + Sex), 
#                      label = after_stat(.wt)))
#?barplot
  
#  counts <- table(df$Age, df$Sex, df$Freq)
#  Gender_Age_plot<-barplot(counts, main = '',
#                          xlab="Number pf people",
#                          legend = rownames(counts))
#  Gender_Age_plot+theme(legend.position ="top")
  
  