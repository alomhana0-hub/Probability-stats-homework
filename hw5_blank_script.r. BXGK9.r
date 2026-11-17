# Homework 5: Probabilities


# For this week's homework we won't be using a `.csv` dataset. 

### BACKGROUND
# The prevalence of Developmental Language Disorder (DLD) in mainstream reception classes in the UK is 7.5%. 
# In other words if you selected a reception child at random from the population the probability of them having a language disorder would be 0.075. 

# --- START

# ---Q1. If you have a class of 35 reception children, what is the probability that there would be exactly 2 children with DLD in your class? 

pbinom(q= 2, size= 35, prob= 0.075)

#0.5

# ---Q2. What is the probability that there would be at least 1 child with DLD in a class of 35?
pbinom(q= 1, size= 35, prob= 0.075)
#0.25
# ---Q3. Plot the probability distribution for number of children with DLD in a class of 35 children. 

children <- tibble(child= 0:35, p= dbinom(x= 0:35, size = 35, prob= 0.075))

ggplot(children, aes(x= child, y= p)) + geom_bar(stat="identity") + theme_classic() + labs(x= "DLD", y= "probability") + scale_x_continuous(breaks= seq(0, 35, 1))


# ---Q4. People generally accept that when an event with a probability of less than 0.05 occurs this is a unusual or surprising event. Based on this cut-off, what would be an unusually large number of children with DLD to have in a class of 35?  



# ---Q5. What is the probability of that there will be more than 5 children with DLD in a class of 35?
pbinom(q= 5, size= 35, prob= 0.075, lower.tail = FALSE)
#0.04

# ---Q6. If there are 2782 reception classes in the UK, (assuming there are 35 children in every class) how many classes would you expect to have more than 5 children with DLD?

pbinom(q= 5, size= 35, prob= 0.075, lower.tail = FALSE)
0.043985*2782
#122 classes