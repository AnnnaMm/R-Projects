library(tibble)
library(tidyr)
library(dplyr)

airquality

airquality %>%
  select(Temp, Month, Day) %>%
  as_tibble() -> data.set

view(data.set)

wide = pivot_wider(data.set, names_form = 'Month', values_from = 'Temp')
wide

long = pivot_longer(wide, cols=2:6,names_to='Month',values_to = 'Temp')
long

?unite

day_month = unite(long, Day, Month, col = 'Date', sep='/')
day_month

day_month_sep = separate(day_month, col=Date,
                         into = c('Day','Month'),sep='/')
day_month_sep

set.seed(10)

sample(nrow(data.set),
       5, replace = FALSE)

data.set[sample(nrow(data.set),
                5, replace = FALSE), 'Temp'] = NA
data.set

sum(is.na(data.set))

na_index = which(is.na(data.set))

data.set$Temp[na_idex] = 'Unknow'

data.set = fill(date.set, Temp)

install.packages('PogromcyDanych')
library(PogromcyDanych)
df = auta2012
sapply(df, is.factor)

summarise(df, rows = n(),
          'nr of models', n_distinct(Marka))

x= group_by(df, Marka)

y= summarise(x, df = n())
y



count(df, Marka)

numb = summarise(count(df, Mark),max(n))[1,]

y[y$df == numb,]

df$Rodzaj.paliwa == 'benzyna'

nrow(df[df$Rodzaj.paliwa == 'benzyna'])

nrow(filter(df, Rodzaj.paliwa == 'benzyna'))/nrow(df)

nrow(filter(df,Cena.w.PLN>2000 ))

nrow(filter(df,Pojemnosc.skokowa>=1500 ))
nrow(filter(df,Pojemnosc.skokowa>=1500  )) / nrow(df)

nrow(filter(df,Cena.w.PLN>2000 & 
              Rodzaj.paliwa == 'olej napedowy (diesel)' ))

df %>%
  filter(Marka == 'Volkswagen') %>%
  group_by(Rodzaj.paliwa) %>%
  count()




