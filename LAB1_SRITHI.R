##LAB-1 jan_3/ 2025 :

##Q-1

#(i) 2.7/2
print(2.7/2)

#(ii) 2.7% / %2 (What does 2.7 % % 2 give you?)
print(2.7%/%2) # it is printing quotient without decimal. tranc(quotient)
print(2.7%%2) # it will print remainder

#(iii) 10+5i/2
print(10+5i/2)

#(iv) round(2.5)
print(round(2.5))
print(round(2.7))

#(v) round(-2.5)
print(round(-2.5))

#(vi) 2% / %4-1
print(2%/%4 -1) 

#(vii) 3*2**2 (equivalent to 3*2ˆ2)
print(3*2**2)
print(3*2^2)

#(viii) 3**2*2
print(3**2*2)
print(3^2*2)

#(ix) 7% / % 4
print(7%/%4) # answer is 1

#(x) 7%%4
print(7%%4)

#(xi) -7%%4
print(-7%%4) ##answer is 1 because the nearest int divisible by 4 is -8 and -8-(-7)=1 

#(xii) trunc(5.7)
print(trunc(5.7))

#(xiii) trunc(-5.7)
print(trunc(-5.7))

##Q-2

#(2) We know the result of ceiling(5.7), which is 6. Write a one-line function to do the same. (Hint: You have to add 0.5 to the number and use the floor function)
ceilNum <- function(a) floor(a+1)
print(ceilNum(5.7))

##Q-3

#(3) Logical operations Predict and check your results for the following boolean operations. Assign the values 1,2,4 respectively to a,b and c and do the following
#(i) a and b
#(ii) not a<b or c>b
a=1
b=2
c=3 
d=4
print(a&b)
print(a<b)
print(c>d)
print(! a<b | c>b)
print(! (a<b | c>b))

##Q-4

#(4) Intricacies of the integer function This exercise is to teach you to not change the data type of a series of numbers using the integer function. What is the result of
#(i) x<- c(5,3,7,8) followed by
#(ii) is.integer(x) followed by
#(iii) is.numeric(x)
#(iv) Try x<- integer(x) and print x. What has happened?
#(v) Repeat the above except the last step and do x<-as.integer(x) followed by is.integer(x). What is the result? Why did you get this result?
x <- c(5, 3, 7, 8)
is.integer(x) #its showing FALSE because by default 5,3,7,8 these are double
is.numeric(x) #its showing TRUE because numeric contains both double and integer
x <- integer(x) #error because x is not the length of the vector
print(x)

##Q-5

#(5) Testing equality of two real numbers This exercise is to teach you to NOT USE the == operator for comparing two real numbers.
#(i) x <- sqrt(2)
x <- sqrt(2)
#(ii) x*x ==2 This is expected to be TRUE, but its not always! Why? What’s the difference? So try
x * x == 2
#(iii) x*x - 2 gives you the difference. This is the error due to rounded off representation of real numbers.
x * x - 2
#(iv) all.equal(x*x,2) gives you the correct answer.
all.equal(x * x, 2)

x <- sqrt(2)
print(x * x == 2)         # FALSE
print(x * x - 2)          # Small difference (e.g., 4.440892e-16)
print(all.equal(x * x, 2)) # TRUE



