#vectors are one dimensional array
a<- c(1,2,3)
a

#scalars are one element vector as constant
f<- "US"
f
#colon operator
b <- c(2:6)
b

a<-c(1,2,3)
b<-c(1:3000)
b
v<-c(3,8,9,10)
v[3]
v[c(3,4)]
#by default matrix arranged in columns 
foo <- matrix(v,nrow=2,ncol = 2)
foo
g <- matrix(v,nrow = 2,ncol = 2,byrow = T)
g
g[1,2]
a <- matrix(c(2,4,6,8),2,2)
a

#matrices are two dimensional data structures
b<-matrix(c(9,10,11,12),2,2)
foo<-array(c(a,b),c(2,2,2))
a
b
foo
xx<- matrix(c(12,10,11,44,    16,    13,    53,    92,    81,    80,    52,    19,    77,    85,    23,    58,    94,    77,    14,    38,    59,    22,    65,    69,    60,    66,    93,    81,    52,    93),nrow=10,byrow=F)
xx
rownames(xx)<-c("Day1",    "Day2",    "Day3",    "Day4",    "Day5",    "Day6",    "Day7",    "Day8",    "Day9",    "Day10")
xx
colnames(xx)<-c("C1","C2","C3")
xx

max(xx[1,])
max(xx[2,])
max(xx[,2])
mean(xx[,2])
max(xx[1,])
max(xx[2,])
max(xx[3,])
max(xx[4,])
max(xx[5,])
max(xx[6,])
max(xx)
17%%2
age<-12
if (age>18){
  print("major")
}else{
  print("minor")
}

x<-0
if(x<0){
  print("negative")
}else if(x>0){
  print("positive")
}else{
  print ("zero")
}

a=c(1,2,3,4)
ifelse(a %% 2==0,"EVEN","ODD")

color<-"green"
switch(color, "red"={print("apple")},"yellow"={print("banana")},"green"={print("avocado")})

vec<-c(1,2,3,4,5)
for(x in vec){
  print(x)
}

i<-1
while(i<6){
  print(i)
  i=i+2
}


x<-1
repeat{
  print(x)
  
  x=x+1
  if(x==6){
    break
  }
}

num<-1:5
for(val in num){
  if(val>3){
    break
  }
  print(val)
}

i<-1:10
for (n in i){ 
  print(max(xx[n,]))
}

dataMat <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3,byrow = T)
dataMat

apply(xx,1,max)

xx.frame<-data.frame(C1=c(12,    10,    11,    44,    16,    13,    53,    92,    81,    80),C2=c(52,    19,    77,    85,    23,    58,    94,    77,    14,    38),C3=c(59,    22,    65,    69,    60,    66,    93,    81,    52,    93))
xx.frame
class(xx.frame)
xx.frame$day <- c("one","two","three","four","five","six","seven","eight","nine","ten")