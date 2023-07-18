setwd("C:\\Users\\joaquin\\Desktop\\Germany\\lectures\\GEOVIS\\2023\\lecture8")

# Read the data
titanic_data <- read.csv("data_titanic3.csv", header = T)
str(titanic_data)

# Converting numeric variables to categories
titanic_data$class <- as.character(data$class)


# Missign values
# Two ways to deal with this problem

# a) # Exclude the missing observations
titanic_drop_na <- titanic_data %>% na.omit()		
dim(titanic_drop_na)


# b) Imputing missing values
titanic_data$age = replace(titanic_data$age, is.na(titanic_data$age), median(titanic_data$age, na.rm = TRUE))

#install.packages("esquisse")
library(esquisse)
esquisse::esquisser(data = titanic_data)
