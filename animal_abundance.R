# FSC script
# to estimate abundance of animals per site



## 1. Assume that the number of animals in the sample is the same everywhere else

# Input abundance found in sample
# Assign the value 7 to the variable "tigers"
tigers <- 7
# Assign the value 5 to the variable "pots"
pots <- 5

# Add tigers and pots together and store the result in "worms"
worms <- tigers + pots
# Display the value of worms
worms

# Multiply "worms" by 100 and store the result in the variable "compost"
compost <- 100 * worms
# Display the result
compost



## 2. Do a simulation instead
# allows natural variability in the abundance of animals per sample

# Generate 10 000 possible values of the variable "worms"
# assuming a mean of 12 and standard deviation of 2
worms_sim <- rnorm(10000, mean = worms, sd = 2)
# a quick look at what that simulation has produced
worms_sim

# Calculate the variable "compost" for every simulation
compost_sim <- 100 * worms_sim
# a quick look at what that multiplication has produced
compost_sim 

# Look at the simulated result
mean(compost_sim)
sd(compost_sim)
range(compost_sim)

# Visualise the distribution
hist(compost_sim,
     main = "Simulation of 10 000 samples",
     xlab = "Number of animals", breaks = 100)



## 3. Getting help in R
?range
?mean



## 4. Examples of common errors
## a. case-sensitivity
# Worms   # uncomment this line to run the error
## b. closing bracket
# mean(compost_sim   # uncomment this line to run the error



## 5. Example of installing and loading a package
install.packages('fortunes')
library('fortunes')

fortune()






