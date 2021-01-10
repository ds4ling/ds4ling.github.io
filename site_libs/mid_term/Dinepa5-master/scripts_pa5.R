library(tidyverse)
library(dbplyr)

library(readr)

lang_data <- read_csv("data_raw/lang_data_raw.csv")

head(lang_data)

#6 tidying the data: seperating id into three new columns(variables)
lang_data1 <- lang_data %>% 
  separate(id, into = c("participant", "gender", "age"), sep = "_", remove = T) %>% View

#Age and proficiency (younger learners perform better)
lang_data1 %>%
  select(., -gender, -iq, -motivation, -participant) %>% 
  ggplot(., aes(x = age, y = prof)) +
  geom_boxplot()

#Age and IQ (not relevant)
lang_data1 %>%
  select(., -gender, -prof, -motivation, -participant) %>%
  ggplot(., aes(x = age, y = iq)) +
  geom_boxplot()

#gender and proficiency (female learners perform better)
lang_data1 %>%
  select(., -age, -iq, -motivation, -participant) %>% 
  ggplot(., aes(x = gender, y = prof)) +
  geom_boxplot()

# Motivation as a function of proficiency
motivprof <- lang_data1 %>%
  select(., -iq, -gender, -participant) %>% 
  ggplot(., aes(x = motivation, y = prof, color = age)) +
  geom_point() +
  geom_smooth(method=lm, se=FALSE)

# The new composite aptitude score (compAptScore)
lang_data1 %>%
mutate(compAptScore = log(iq / 80) + log(motivation)) %>% View 

  
