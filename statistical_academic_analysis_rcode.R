#Jasmine Armoo 
library(ggplot2)

#Chi-Square Goodness of Fit
library(readr)
student_por <- read_csv("stat314/student_por.csv")
View(student_por)show_col_types = FALSE

#Seperate statistics based on gender
men_stats <- filter(student_por, sex == 'M')
women_stats <- filter(student_por, sex == 'W')

#Totaling failed by gender
failed_man <- sum(men_stats$failures)
failed_women <-sum(women_stats$failures)

#Contingency table to meet frequency assumption for each gender
observed_freq <-c(failed_men, failed_women)
total_failure <-sum(observed_freq)
expected_freq <-rep(total_failure /2, 2)

chisq.test(observed_freq,p = rep(0.5,2),rescale.p =TRUE)

#ANOVA
#read in file 
library(readr)
student_por <- read_csv("stat314/student_por.csv")
View(student_por)

student_porG3 <-student_por$G3

#Asses normality with histogram
ggplot()+
  geom_histogram(data = student_por, na.rm = TRUE,
                 aes(x= G3, y=..density..),
                 binwidth = 1,color="black",fill="lightblue")+
  geom_density(data = student_por, na.rm = TRUE, aes(x = G3),
               color="pink",size=1.5)

#Peforming Shapiro test
shapiro.test(student_por$G3)

#Perfoming Levene test
leveneTest(G3-factor(higher)*factor(paid),data = student_por)

#Q-Q plots
qqnorm(student_por$G3)
qqline(student_por$G3)

#Additive two-way Anova
G3_add <- aov(G3 ~ higher + paid, data = student_por)
summary(G3_add)

#Two way anova with interaction
G3_interact <- aov(G3 ~ higher * paid, data = student_por)
summary(G3_interact)

TukeyHSD(G3_add)
TukeyHSD(G3_interact)

#TEST OF MEANS
student_por <- read.csv("stat314/student_por.csv")
student_math <- read.csv("stat314/student_math.csv")

G3student_por <- student_por$G1
G3student_math <-student_math$G1

#Math histogram for visualizing normality
ggplot()+
  geom_histogram(data = student_math, na.rm = TRUE,
                 aes(x= G1, y=..density..),
                 binwidth = 0.5,color="black",fill="lightblue")+
  geom_density(data = student_math, na.rm = TRUE, aes(x = G1),
               color="sienna1",size=1.5)

#Portuguese histogram for visualizing normality
ggplot()+
  geom_histogram(data = student_por, na.rm = TRUE,
                 aes(x= G1, y=..density..),
                 binwidth = 0.5,color="black",fill="lightblue")+
  geom_density(data = student_por, na.rm = TRUE, aes(x = G1),
               color="sienna1",size=1.5)

#Independent t-test
t.test(student_por$G1, student_math$G1, paired = FALSE, var.equal = FALSE, alternative = "two.sided")



