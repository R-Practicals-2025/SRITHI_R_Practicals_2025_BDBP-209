##Quiz

#Ques-1
arithmetic_operations <- function(k,n){
  
  sum <- k+n
  sub <- k-n
  mult <- k*n
  div <- k/n
  mod <- k%%n
  quit_without_dec <- k%/%n
  res <- c(sum,sub,mult,div,mod,quit_without_dec)
  return(res)
}
arithmetic_operations(4,2)

#Ques-2

root_find <- function(a,b,c){
  x1 <- (b^2 - (4*a*c))
  x <- sqrt(x1)
  root1 <- (-b + x)/(2*a)
  root2<- (-b - x)/(2*a)
  result <- c(root1,root2)
  return(result)
  
  
}
root_find(3,8,4)
