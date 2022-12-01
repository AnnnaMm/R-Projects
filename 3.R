install.packages('PogromcyDanych')
library(PogromcyDanych)
library(tibble)
library(tidyr)
library(dplyr)
df = auta2012
view(df)

df %>% 
  filter(Marka == 'Volkswagen') %>%
  group_by(Rodzaj.paliwa) %>%
  count()
mean(df$Cena.w.PLN[df$Marka == 'Volkswagen'])

mean(df$Przebieg.w.km[df$Marka == 'Volkswagen'], na.rm = TRUE)

summarise(filter(df, Marka == 'Volkswagen'),
          `evrydz cena` = mean(Cena.w.PLN),
          `evrydz przebieg` = mean(Przebieg.w.km, na.rm = TRUE))

df %>% 
  filter(Marka == 'Volkswagen') %>%
  group_by(Model) %>%
  count()
 
summarise(group_by(df, Model),
          `average price` = mean(Cena.w.PLN , na.rm = TRUE)) -> pom1
view(pom1)

df %>% 
  filter(Marka == 'Toyota', Model == 'Corolla') %>%
  select(Cena) %>% 
  quantile(na.rm = TRUE)


df %>% 
  filter(Marka == 'Toyota') %>%
  group_by(Model) %>%
  summarise(`srednia cena` = mean(Cena.w.PLN)) %>%
  arrange(desc(srednia.cena))

df %>% 
  filter(Marka == 'Volkswagen', Model = 'Passat',Rok.produkcji = 2006, Cena.w.PLN<35000) %>%
  count()
  

df %>% 
  filter(Rok.produkcji = 2007) %>%
  group_by(Marka) %>%
  summarise(`ilosc` = n()) %>%
  arrange(ilosc)->pom2

rlang::last_error()


install.packages('AER')
library(AER)
glimpse(Fertility)
?Fertility
df_fert <- glimpse(Fertility)
glimpse(df_fert)
view(df_fert)
slice(select(df_fert, age, work), 35:50)
slice(select(df_fert, nrow(df_fert)), nrow(df_fert))
 

