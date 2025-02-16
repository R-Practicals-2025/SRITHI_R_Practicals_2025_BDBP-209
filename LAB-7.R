### LAB-7

#deleting col from a dataframe 
data=read.csv("~/Downloads/BrainCancer.csv",header=TRUE)
print(colnames(data))
data$time <- NULL
#print(data.head())
print(colnames(data)


##installing the packages for readxl
install.packages("readxl")
##now you have to load that package in library then only you can read that
library(readxl)
##read the data
data2=read_excel("~/Downloads/pone.0148733.s001.xlsx",1) ## 1 stands for the sheet number .
##now print the column names of that data
print(colnames(data2))

a=5.0
b=10.0
c=15.0
d=20.0
#if (a<b)
  #print("a is less than b")

if (a>b){
  print("a>b")}
else if (a<b){
  print("b<c")
}

##for loop in one line
for (i in 1:5) print(i^2)
j=0
k=1
for (i in 1:5){
  j=j+1
  k=k+2
  print(paste("j=",j,"k=",k))
  print(paste(j,k))
}

fn=function(x) x^2
fac1=function(x){
  f=1
  if (x<2)return(1)
  for (i in 2:x){
    f=f*i
    f}
  return(f)
}
print(fac1(4))
print(sapply(0:5,fac1)) ###this will print 1(for 1), 1(fo

fac2=function(x){
  f=1
  t=x
  while(t>1){
    f=f*t
    t=t-1}
  return(f)
  }
print(fac2(5))

fac3=function(x){
  f=1
  t=x
  repeat{ ## repeat will also work like while only if we comment this if condition ir will go for infinite loop
    if (t<2)break
    f=f*t
    t=t-1}
  return(f)
    
  }
print(fac3(6))
print(sapply(0:6,fac3))

fac4=function(x)max(cumprod(1:x))
print(fac4(3))

fac5=function(x) gamma(x+1)
print(fac5(4))

factorial(6)

x=runif(1000000000)
pc=proc.time()
#result1=fac1(2005)
#proc.time()-pc ##this is giving 
#x=runif(100000000000000000000)
cmax=x[1]
for (i in 10000000){
  if (x[i]>cmax)cmax=x[i]}
proc.time()-pc





  