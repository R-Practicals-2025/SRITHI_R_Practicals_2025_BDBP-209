
#### DISCUSSION

xval= seq(1,10,0.5)
yval= 30*xval/(2+xval)
#plotting the xval and yval
plot(xval, yval, pch=0, cex=1.5, col="purple",type="0",1ty=6, 1wd=1, main="This is a main title", col.main="blue",
     font.main=1, xlim=c(1,20),ylim=c(1,150), text(3,100,"This is text inside plot",col="brown",font=2))
# pch=0 (square) , pch=1 (circle)

#cex=1(default size), cex=1.5 ( 150% of default size), cex=0.5(50% of default size )
# cex.axis
#colors(), col="blue", col="red" col can also be hexadecimal 


#plot(pch=14, cex=1.4, col="blue")

#type="p" plots point......o,h,s ,n, b, l
#1ty=0 or 1ty="blank" 1 solid,2 dashed, 3dotted , 4 dotdashed, 5 longdashed , 6 twodashed

par(mfrow=c(1,2))
x=seq(-pi,pi,0.1)
y=sin(x)
plot(x,y,type="l")
plot(x,y,pch=c(4,5,6),col=c('red','blue','violet','green'))

#3lines or function curve
x<- seq(2,20,0.1)
y1=x^2
y2=x^3
plot(x,y1,type='l',col='red')
lines(x,y2,col='green')
legend('bottomright',inset = 0.05, c("squares","cubes"),lty = 1,col=c('red','darkgreen'))

#ablines

abline(a=4,b=5,col='blue')
abline(h=c(4,6,8),col='darkgreen',lty=2)

#x<- seq(1,3,4,5,6,7,8)
#y<- seq(2,3,4,5,76,8,9)
#plot(x,y,pch=20,cex=1,col=“red”) 
#pch=20, cex=1.2, col=“blue” 
#pch=14, cex=1.4, col=“#99AA28” 
#pch=18, cex=1.8, col=“#33AAF8”

###LAB_EXERCISES:

#(1) Plot the point (2,4) with square point character type and magenta color.
plot(2,4,col='magenta',pch=0)

#(2) Create a sequence of function values corresponding to sin(x) and cos(x) function from −π
#to π and plot the two functions on the same graph with appropriate titles, axes labels,
#blue color for the sine curve, red color for the cosine curve, star point character type for
#sine, cross type point character for cosine overlaid by lines joining the points.
 
x <- seq(-pi, pi, length.out = 100)  
plot(x, sin(x), type = "o", col = "blue",cex=2, pch = "*", xlab = "x", ylab = "Function Value", main = "Sine and Cosine Functions"); lines(x, cos(x), type = "o", col = "red", pch = "+")  

#(3) Reproduce the bar graph type of plot in Fig. 4.2.1 in the Biostatistics book by Daniel
# using the appropriate settings for the appearance.

###Q-3

x <- c(1,2,3,4,5,6,7,8)
y1 <- c(62,47,39,39,58,37,4,11)
total <- sum(y1)
y2<- y1/total
#y2 <- c(62/total,47/total,39/total,39/total,58/total,37/total,4/total,11/total)
barplot(y2, xlab = "x(number of programs)", ylab = "probablity", main = "number of programs v/s probablity", col='grey',width =1,
        ylim=c(0,0.25),space=0.5)
abline()
abline(h=-0.0001,lwd=1.5,col='black')


##### Q-4

#Make a 2x3 grid of 6 graphs with the following specifications and their respective titles
#(keep the title short!)
par(mfrow = c(2, 3))  # Set up a 2x3 plotting grid

# (i) x vs cos(x) with red color and lines
x <- seq(-pi, pi, length.out = 100)
plot(x, cos(x), type = "l", col = "red", main = "Cos(x)", xlab = "x", ylab = "cos(x)")

# (ii) x vs (x^(2/3)) + 4.2 with violet color, points and lines, linewidth 2, linetype 1
x <- seq(-5, 5, length.out = 100)
plot(x, (x^(2/3)) + 4.2, type = "o", col = "purple", lwd = 2, lty = 1,
     main = "x^(2/3) + 4.2", xlab = "x", ylab = "f(x)")

# (iii) Histogram of binomial distribution (n=12, p=0.3)
hist(rbinom(1000, size = 12, prob = 0.3), col = "blue", main = "Binomial Dist (n=12,p=0.3)",
     xlab = "Values", ylab = "Frequency")

# (iv) Histogram of binomial distribution (n=12, p=0.8)
hist(rbinom(1000, size = 12, prob = 0.8), col = "green", main = "Binomial Dist (n=12,p=0.8)",
     xlab = "Values", ylab = "Frequency")

# (v) Histogram using type='h' for y = 50x/(x+2), alternating colors
x <- 1:10
y <- 50 * x / (x + 2)
plot(x, y, type = "h", lwd = 2, col = rep(c("blue", "orange"), length.out = 10),
     main = "Type 'h' Plot", xlab = "x", ylab = "f(x)")

# (vi) x vs log(x) with orange color and ‘step’ linetype
x <- seq(1, 10, length.out = 100)
plot(x, log(x), type = "s", col = "orange", main = "log(x) Step", xlab = "x", ylab = "log(x)")

###Q-5
# Sample Data
par(plt = c(0.1, 0.9, 0.2, 0.8))  # Adjust plot placement
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(2, 5, 3, 6, 5, 8, 10, 7, 9, 10)

# Create the Plot
plot(x, y, type = "o", col = "pink", lty = 2, lwd = 2, pch = 16, 
     xlab = "Time", ylab = "Performance", main = "This is a graph",
     col.main = "blue", 
     ylim = c(2, 10), xlim = c(1, 10.5), 
     cex.main = 1.5, cex.lab = 1.2, cex.axis = 1)

# Add Text Labels
text(x, y, labels = x, pos = 3, col = "red", cex = 1.2)

# Add Legend
legend("topleft", inset = c(0.05, 0.05), legend = "Per curve", col = "pink", lty = 2, lwd = 2, pch = 16, 
       box.lty = 1, bg = "white", cex = 0.8)

###Q-6
# Set parameters
N <- 500   # Total population size
K <- 50    # Total success items in population
n <- 30    # Sample size

# Generate 1000 random values from Hypergeometric Distribution
samples <- rhyper(1000, K, N - K, n)

# Plot the histogram
hist(samples, breaks = 20, col = "skyblue", border = "black", 
     main = "Hypergeometric Distribution Histogram", 
     xlab = "Number of Successes", ylab = "Frequency", probability = TRUE)

# Add a density line
lines(density(samples), col = "red", lwd = 2)

###Q-7
par(mfrow = c(3, 3))  # 3x3 grid

N <- 100; K <- 50  # Population parameters
n_vals <- seq(10, 90, by = 10)  # Varying sample sizes

for (n in n_vals) {
  hist(rhyper(10000, K, N - K, n), probability = TRUE, col = rgb(1, 0, 0, 0.5), 
       main = paste("n =", n), xlab = "Successes", ylim = c(0, 0.25), border = "red")
  hist(rbinom(10000, n, K / N), probability = TRUE, col = rgb(0, 0, 1, 0.5), add = TRUE, border = "blue")
}

par(mfrow = c(1, 1))  # Reset layout


###Q-8
# Define x values (range of possible counts)
x <- 0:80  

# Compute Poisson probabilities for λ = 3, 20, 45
p1 <- dpois(x, lambda = 3)
p2 <- dpois(x, lambda = 20)
p3 <- dpois(x, lambda = 45)

# Plot Poisson distributions
plot(x, p1, type = "o", col = "red", pch = 16, xlab = "x", ylab = "Probability",
     main = "Poisson Distributions (λ = 3, 20, 45)", ylim = c(0, 0.2))

lines(x, p2, type = "o", col = "blue", pch = 17)  # λ = 20
lines(x, p3, type = "o", col = "green", pch = 18)  # λ = 45

# Add legend
legend("topright", legend = c("λ = 3", "λ = 20", "λ = 45"),
       col = c("red", "blue", "green"), pch = c(16, 17, 18), lty = 1)







