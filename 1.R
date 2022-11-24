`#---1
#x = 10:20
#x


#?rep()
#---2
#rep(c(3,5,7),4)

#x = c(3,5,7)
#rep(x,4)

#?seq()

#seq(1, 9, by = 2) 


#---3
?matrix()
l = c(rep(4,8),rep(6,7),rep(3,9))
l
m = matrix(l,nrow=7)
m


#---4
seq(1, 100, by = 2) 



#---5

rep(c(1,2,3,4,5,6,7,8,9),c(1,2,3,4,5,6,7,8,9))


#---6
x <- c(NA, 3, 14, NA, 33, 17, NA, 41)
?grep()
?is.na()
#grep(NA,x)
is.na(x)
sum(is.na(x))
?mean()
?sum()
mean(x)
mean(x,na.rm = TRUE)

x[is.na(x)] =11
x
#---7

cfb

data.frame()


library("MASS")
Cars93
colnames(Cars93)
factor(Cars93)
is.factor("Make")
data.frame(Cars93)
?table()
sapply(Cars93,is.factor)
attach(Cars93)
table(Origin,Type)

summary(Cars93)

sapply(split(Cars93,Cars93$Type),summary)

Insurance
attach(Insurance)
tapply(Insurance$Claims,list(Insurance$Group,Insurance$Age),sum)

with(Insurance,tapply(Claims,list(Group,Age)),sum)

mtcars

mtcars[mtcars$cyl==6,]

filter <- Cars93$Type == 'Small'| Cars93$Type == 'Sporty'
Cars93[filter,]

filter



library("DAAG")
tinting
sapply(tinting[which(sapply(tinting,is.factor)==TRUE)],levels)
list1
list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow = 2 ))
sapply(list1, unique)
sapply(list1, length)
x <- c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
sum(x)
log10(x)
max(x)
min(x)

diagonal<-c(4,1,23)
diag(diagonal)

m = rbind(c(1,2,3),c(4,2,1),c(2,3,0))
m

inv=solve(m)
inv%*%m

r = c(1:5)
h = c(4:8)
P = 2*pi*r*(r+h)
V = pi*r^2*h
P
V
data <- cbind.date.frame(r,h,P,V)

isl = data.frame(sort(island,decreasing = TRUE))




install.packages('schoolmath')
library(schoolmath)
primlist[primlist<1000]
max(primlist[primlist<1000])
length(primlist[primlist>100 & primlist < 500 ])

#---21
vec = c(1:1000)
vec
even = vec[vec %% 2 == 0]
even
inv_even = even^(-1)
inv_even

#---22
library(MASS)
hills
rownames(hills[hills$climb ==2100, ])
row.names(hills)[hills$climb == 2100]

#---23
df = data.frame(birthwt)
df
df$ftv[df$ftv > 2] = 2
df$ftv
df$ftv = factor(df$ftv,
                levels = c(0,1,2),
                labels = c('zero','one','two or more'))
df

#---24
install.packages("car")
library(car)
?recode
?sample
x= sample(c('a','b','c','d','e'), size = 100, replace = TRUE)
x
table(x)
y = recode(x,"c('a','b') = 1;
           c('c','d') = 2;
           else  = 3")
y
table(y)

#---25
df = data.frame(Pima.tr2)
df
sum(is.na(df$bp) == TRUE)

#---26
#########################
######zestaw 3 & 4

#1
LakeHuron

plot(LakeHuron)

min_ind = which(LakeHuron == min(LakeHuron))
max_ind = which(LakeHuron == max(LakeHuron))
min_ind
max_ind

plot(LakeHuron)
identify(c(min_ind + 1874, max_ind + 1874), 
         c(LakeHuron[min_ind], LakeHuron[max_ind]),
         label = c('min', 'max'))

#---2
library('UsingR')
emissions
plot(emissions$CO2 , emissions$GDP)

identify(emissions$CO2,
         emissions$GDP,
         label = rownames(emissions[1])
         )
df = emissions[-1, ]
df
plot(log10(df$CO2), lod10(df$GDP))
text(log10(df$CO2), log10(df$GDP), labelst = rownames(df[1]))


stem(c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97), scale = 10)
stem

library (DAAG)
possum
hist(possum$hdlngth, probability = T)
lines(density(possum$hdlngth))
stem(possum$hdlngth)

boxplot(chips)
chips
mean(chips$wafer11)
var(chips$wafer11)

mean(chips$wafer12)
var(chips$wafer12)

mean(chips$wafer13)
var(chips$wafer13)





