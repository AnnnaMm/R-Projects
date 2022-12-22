titanic_info
colnames(titanic_info)
attach(titanic_info)

devtools::install_github("dill/emoGG")
# Library for emoji
library(emoGG)

date.frame(titanic_info)

library(ggplot2)
library(dplyr)
library(tidyr)

#---1---
plot(density(Survived))                           
lines(density(Age), col = "red")

#---2---
theme_set(theme_classic())
p2 <- ggplot(data=titanic_info, aes(x=Age, group=Sex, fill=Sex)) +
  geom_density(adjust=1.5, alpha=.4) 
p2

#---3---
ggplot(titanic_info,
       aes(x = factor(""), fill = factor(Pclass)) ) +
  geom_bar() +
  coord_polar(theta = "y") +
  scale_x_discrete("")
#---3---
geom_emoji(data = subset(titanic_info, SibSp == '0'), 
           aes(x = Age, y = Fare), 
           emoji = '1f6ba') -> plot.SibSp_0

geom_emoji(data = subset(titanic_info, SibSp == '1'), 
           aes(x = Age, y = Fare), 
           emoji = '1f6bb') -> plot.SibSp_1

ggplot()+ add_emoji(emoji = '1f6a2') + plot.SibSp_0 + plot.SibSp_1 # emoji as points

#---4---
titanic_info %>%
  tail(10) %>%
  ggplot( aes(x=Ticket, y=Fare)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#69b3a2", size=6)
 
#---5---
ggplot(data = titanic_info, aes(x = Age, y = Fare)) + 
  geom_point() + 
  stat_smooth(method = lm, col = "red")