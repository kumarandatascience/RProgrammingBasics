#university data for kmean cludtering and measuring confidence level intervals
universityData <- read.table(file.choose(),sep = ",",header = T) 
head(universityData)
universityData
clusterData <- universityData[1:25,1:7]
normData <- scale(clusterData[,2:7])
normData
d <- dist(normData, method = "euclidean")
fit <- hclust(d, method="complete")
plot(fit)
groups <- cutree(fit, k=5) 
rect.hclust(fit, k=5, border="red")
membership<- as.matrix(groups)
membership
hclustering <-data.frame(clusterData, membership)
hclustering

#k means clustering

fit <- kmeans(normData, 5)
normData <- data.frame(normData, fit$Cluster)
aggregate(normData[,2:7], by=list(fit$cluster), FUN=mean)
aggregate(normData[,2:7], by=list(fit$cluster), FUN=max)
aggregate(normData[,2:7], by=list(fit$cluster), FUN=min)
# groceries
install.packages("arules")
library("arules")


Groc<-read.transactions(file.choose(),sep=",")
summary(Groc)
inspect(Groc[1:3])
#support: the proportion of transactions that a perticular item shows up
itemFrequency(Groc[,1])
itemFrequencyPlot(Groc, support = .10)

itemFrequencyPlot(Groc, topN = 10)

#Confidence: measure of proportion of transactions 
#where the presence of an item or set of items results into a presence of an item or
#a set of items

# confidence({A,B} -- {C}) = support{A,B,C}/support{A,B}
m1<-apriori(Groc,parameter = list(support=.007,confidence=.25,minlen=2))
summary(m1)
inspect(m1)
  inspect(m1[1:10])
 