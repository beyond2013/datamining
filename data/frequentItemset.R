library(arules)
#setwd("Desktop/Data Mining & DataWare Housing/data")
transactions = read.transactions(file = file("transaction.txt"), 
                                 format = "basket", sep = ",")
freqItemsets <- apriori(transactions, 
                 parameter = list(minlen=1, sup=0.22, confidence=0.7, 
                                  target="rules"))
inspect(freqItemsets)


