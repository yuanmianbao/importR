#----------------------------------------
# scope: local v.s. global -- variables in the function only stay in the function  
#----------------------------------------
x<-2
y<-3
z<-2 

myfunct <- function(y) {
  y <- y*y
  x<-y+z
  return(x)
}

result <- myfunct(y)

myfunct(z)

#----------------------------------------
# specifying arguments 
#----------------------------------------


fit<- lm(mpg ~wt+hp, mtcars)

#----------------------------------------
# build a function for the users to import a file so that the users only needs to provide the file name 
#----------------------------------------

#----------------------------------------
# check for dependiencies using require() instead of library()
#----------------------------------------

myfunction(x){
  if(!require(descr)){
    stop("You need to install descr")
    install(descr)
  }
  freq(x)
}

#----------------------------------------
# argument checking: test whether or not the arguments are the expected data type 
#----------------------------------------
if(!is.data.frame(data)){
  stop("You need to put data frame for the data")
}

#----------------------------------------
# handling errors, messages and warnings
#stop() for fatal errors
#warning() for warnings 
#message() for delivering diagnostic messages 
#----------------------------------------


#----------------------------------------
# passing additional arguments 
#boxplot <- function(formula, data, color="red", ...){
  #boxplot(formula, data, col=color, ...)
#}
#----------------------------------------



#----------------------------------------
# ifelse(test, yes, no), e.g. ifelse(mtcars$mpg <20, "low", "no") 
#----------------------------------------

#----------------------------------------
# switch(EXPR, list of alternatives)
#----------------------------------------

center <- function(x, type){
  switch(type, 
         mean = mean(x),
         median = median(x))
}

x = 4

center(x, "mean")


mytest <- cor.test(mtcars$wt, mtcars$mpg)
mytest
mytest$p.value
mytest$estimate
mytest$conf.int
myfunct <- function(x){
  for(n in x) {
    print(n)
  }
}
myfunct(c(1,2,3,4,5))

dataset <- data.frame(
  variable = 0,
  r = 0,
  p = 0,
  sigif = 0
)
print("***")

test<- cor.test(mtcars[,"mpg"],mtcars[,"hp"])
test

r<-c()
b<-c()

class(mytest$estimate)
e <- mytest$estimate


variable <- c()
r <- c()
p.value <- c()
sigif <- c()
mytable <- table(
  variable = variable, 
  r = r,
  p.value = p.value,
  sigif= sigif)

mytable<-rbind(mytable, c(1,2,3,4))
colnames(mytable) <- c("variable", "r", "p.value", "sigif")
as.character(mytable[,c("r")])

myprint <- function(y){
  if(missing(y)){
    y="haha"
  }
  cat("corrlations of", y, "with")
}

myprint()
e <- c(0.11111, 0.44444444444, 0.3, 0.444444444)
haha <- round(e, digits = 3)

x <- c("1","2", "3")
y <- c("1","2")
x[x!="1"]

table(mtcars$mpg, mtcars$cyl)
class(str(mtcars))

types <- sapply(mtcars, typeof)
for(col in mtcars){
  print(col)
}

print(mtcars, row.names = FALSE)

