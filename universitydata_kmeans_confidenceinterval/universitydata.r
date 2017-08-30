#university data for kmean clustering 
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

