library(foreign)

table <- read.csv(file=file.choose(),sep=";")
head(table)
attach(table)
summary(table)
na.omit(table$s14_4)
na.omit(table)
names(table) <- c("x","DistCode","SerialNumb","HousMembers","YearBuilt","NumbRooms","FloorSpace","Conso","tableYN","TypeCook","income")

table$conso <- table$conso + 1
table$conso <- log(table$conso)





LM1 <- lm()
