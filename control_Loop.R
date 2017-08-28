TRUE | FALSE
#conditional Statements
#if.. else statement
age <- 20
if(age >= 18){
  print("Major")
}else{
  print("Minor")
}
#conditional if else if statements
x <- 0
if(x>0){
  print("Positive number")
}else if(x < 0){
  print("Negative number")
}else{
  print("zero")
}

#ifelse function
a = c(1,2,3,4)
ifelse( a%%2 == 0, "even", "odd")

#switch statements
switch(2,"apple","ball","cat")
color <- "green"
switch(color,"red"={print("apple")},"yellow"={print("banana")},"green"={print("avacado")})

item <- 2
switch(item, "one","two","three")

item <- "red"
switch(item,"red"={print("apple")},"yellow"={print("Mango")},"green"={print("avacado")})

#loop statements
vec <- c(1,2,3,4,5)
for(val in vec){
  print(val)
}

#break statements

num <- 1:5
for(val in  num){
  if(val == 3){
    break;
  }
  print(val)
}

#next statements
num <- 1:5
for(val in num){
  if(val == 3){
    next  
  }
  print(val)
}