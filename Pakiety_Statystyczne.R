#---1,2---
?rep()
rep(1:4, each = 2)
x = c(rep(TRUE, 3),rep(FALSE, 4),rep(TRUE, 2),rep(FALSE, 5))
x
as.integer(x)
#---3---
pol = c(c(1:20),rep(0,20),seq(0,40, by = 2),rev(seq(0,40, by = 2)),rep(0,20),rev(1:20))
pol


#---4---
l = letters
lt = c(l[5],l[10],l[15],l[20],l[25])
lt

#---5---
n = c(1:1000)
n[n%%2 == 0] = (1/n[n%%2 == 0])
format(n,scientific = FALSE)

#---6---

v = c(-1.876,-1.123,-0.123,0,0.123,1.123,1.876)

if(v<1)
{
  print("-1")
}

#---7---
primlist
max(primlist[primlist<1000])
length(primlist[primlist>100 & primlist<500])

#---8---



# zadanie 3



ankieta <- read.table("http://ls.home.amu.edu.pl/data_sets/ankieta.txt", header = TRUE)

print(ankieta)

ankieta_wyniki = ankieta$wynik


# rozkład empiryczny opisany za pomocą szeregu rozdzielczego
data.frame(cbind(liczebnosc = table(ankieta_wyniki),
                 procent = prop.table(table(ankieta_wyniki))))


barplot(table(ankieta_wyniki),
        xlab = "Liczba błędów", ylab = "Liczebność",
        main = "Rozkład empiryczny liczby błędów",
        col=c("#FFCCFF","#FF99FF","#FF66FF","#FF33FF","#CC33CC"))

pie(table(ankieta_wyniki),col = c("#FFCCFF","#FF99FF","#FF66FF","#FF33FF","#CC33CC"))




# zadanie 4
#1


hamulce <- read.table("http://ls.home.amu.edu.pl/data_sets/hamulce.txt", dec = ",")

# estymatory
print("wartość średnia default :")
(mu_est <- mean(hamulce$V1))
print("wartość średnia 2 :")
(mu_est <- (sum(hamulce$V1)/length((hamulce$V1))))


print("odchylenie standardowe default() :")
(sigma_est <- sd(hamulce$V1))

n = length(hamulce$V1)

(s1 <- sqrt(sum((hamulce$V1 -(sum(hamulce$V1)/length(hamulce$V1)))^2)/(length(hamulce$V1)-1) ))

(s11 <- sqrt(sum( (hamulce$V1 -mean(hamulce$V1)) ^2)/(length(hamulce$V1)-1)))

print("odchylenie standardowe 2 :")
(s12 <- sqrt(sum((hamulce$V1 -(sum(hamulce$V1)/length(hamulce$V1)))^2)/n))


G1 = gamma((n-1)/2)
G2 = gamma(n/2)

print("odchylenie standardowe 3 :")
(sigma_est3 <- sqrt((n-1)/2))*(G1/G2)*s1

print("wariancja :")
(v_est <- var(hamulce$V1))


hist(hamulce$V1, 
     xlab = "Długość drogi hamowania", 
     main = "Rozkłady empiryczny i teoretyczny długości drogi hamowania",
     probability = TRUE, 
     col = "lightgreen")
lines(density(hamulce$V1), col = "red", lwd = 2)
curve(dnorm(x, mu_est, sigma_est), 
      add = TRUE, col = "blue", lwd = 2)
legend("topleft", legend = c("empiryczny", "teoretyczny"), col = c("red", "blue"), lwd = 2)

# Zadanie 2

Centrala
#Rozkład_P
(ENWM = mean(Centrala$Liczba))


# Zadanie 3


awarie <- read.table("http://ls.home.amu.edu.pl/data_sets/awarie.txt", dec = ",")
awarie
print("wartość średnia :")
#Wykładniczy
(mu_2_est <- 1/(mean(awarie$V1)))


hist(awarie$V1, 
     xlab = " ", 
     main = "Rozkłady empiryczny i teoretyczny ",
     probability = TRUE, 
     col = "lightgreen")
lines(density(awarie$V1), col = "red", lwd = 2)

curve(dexp(x, mu_2_est), 
      add = TRUE, col = "blue", lwd = 2)

legend("topleft", legend = c("empiryczny", "teoretyczny"), col = c("red", "blue"), lwd = 2)




# zadanie 6
# 3
#test chi kwadrad dla 2 prob niezaleznych
tab = matrix(c(50, 20, 10,90, 50, 6), nrow = 3)
chisq.test(tab)
?chisq.test()
# 4
x <- c(242.2, 243.8, 252.8, 245.4, 245.6, 253.6, 247.3, 238.7,
       241.6, 242.8, 251.1, 246.8, 247.0, 245.6, 242.2, 253.9)
shapiro.test(x) #???
?shapiro.test()
# 5
p1 = c(280,325,270,385,275,290,400,330,300,345)
p2 = c(260,380,320,350,285,395,370,340,310,390,355)

ks_test <- ks.test(p1, p2)
?ks.test()
print(ks_test)

ecdf1 <- ecdf(p1)
ecdf2 <- ecdf(p2)

plot(ecdf1, col = "blue", main = "Dystrybuanta empiryczna ",
     xlab = "x", ylab = "Fn(x)", 
     xlim = range(c(p1, p2)))

lines(ecdf2, col = "red")
legend("topleft",legend = c("Pierwsza próbka", "Druga próbka"),
       col = c("blue", "red"), lty = 1)


# zadanie 7
#1
P_m = c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
alpha = 0.05
sh = shapiro.test(P_m)
x_ = mean(P_m) 
print(x_)
print(sh$p.value)
if (sh$p.value < alpha)
{
  print('Mamy podstawy do odrzucenia hipotezy 0')
}
??
#zweryfikować ze srednim = 870
qqnorm(P_m, main = "Normal Q-Q Plot")
qqline(P_m, col = "blue")
# 3
przed = c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
po = c( 89, 92, 98, 95, 95, 92, 95, 92, 98, 101)


#zadanie 8
#1
Plony <- read_excel("j:/Desktop/Plony.xlsx")
View(Plony)
df <- data.frame (
  Odmiana = c("Aster","Drop","Frezja","Irys","Ruta"),
  średnia = c(mean(Plony$plon[Plony$odmiana == "Aster"]),
              mean(Plony$plon[Plony$odmiana == "Drop"]),
              mean(Plony$plon[Plony$odmiana == "Frezja"]),
              mean(Plony$plon[Plony$odmiana == "Irys"]),
              mean(Plony$plon[Plony$odmiana == "Ruta"])),
  
  odchylenie_standardowe = c(sd(Plony$plon[Plony$odmiana == "Aster"]),
                             sd(Plony$plon[Plony$odmiana == "Drop"]),
                             sd(Plony$plon[Plony$odmiana == "Frezja"]),
                             sd(Plony$plon[Plony$odmiana == "Irys"]),
                             sd(Plony$plon[Plony$odmiana == "Ruta"]))
)
df

boxplot(Plony$plon ~ Plony$odmiana,
        xlab="odmiana",ylab="plon", 
        col = c("blue","orange","green","red","purple"),
        data = df)

points(rep(1,6)+rnorm(6,sd = 0.05),
       Plony$plon[Plony$odmiana == "Aster"],
       col = "red",pch = 16)

points(rep(7,11)+rnorm(5,sd = 0.05),  #???
       Plony$plon[Plony$odmiana == "Drop"],
       col = "red",pch = 16)
points(rep(12,17)+rnorm(6,sd = 0.05),
       Plony$plon[Plony$odmiana == "Frezja"],
       col = "red",pch = 16)
points(rep(18,22)+rnorm(5,sd = 0.05),
       Plony$plon[Plony$odmiana == "Irys"],
       col = "red",pch = 16)
points(rep(23,28)+rnorm(6,sd = 0.05),
       Plony$plon[Plony$odmiana == "Ruta"],
       col = "red",pch = 16)

