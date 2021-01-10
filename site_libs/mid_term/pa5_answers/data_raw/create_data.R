set.seed(1)

n <- 200

base <- tibble(id = sprintf("p%02d_%0s", 1:n, c("male", "female")), 
       age = rep(c("older", "younger"), each = n / 2)) %>% 
  unite(., id, id, age, remove = TRUE) 

# Model setup for generating data
intercept_a <- 0.05
covariate   <- rnorm(n/2, 0.5, 0.1)
y_a         <- intercept_a + (covariate * 1) + rnorm(n/2, 0, 0.1)
intercept_b <- 0.6
y_b         <- intercept_a + (covariate * 0.45) + rnorm(n/2, 0, 0.1) + 0.4

ex_a <- tibble(composite_score = covariate, older = y_a, younger = y_b) %>% 
  gather(., group, prof, -composite_score)

lang_data_raw <- cbind(base, ex_a) %>% 
  as.tibble(.) %>% 
  select(-group) %>% 
  mutate(., prof = round(prof, 2), 
            third_comp = composite_score * .33, 
            twothird_comp = composite_score * .66, 
            iq = (exp(third_comp) * 80) %>% round(., 2), 
            motivation = exp(twothird_comp) %>% round(., 2), 
            comp_check = log(iq / 80) + log(motivation)) %>% 
  select(., id, iq, motivation, prof)
# create composite_score: log(iq / 80) + log(motivation)

write_csv(lang_data_raw, "./lang_data_raw.csv")


mutate(lang_data_raw, composite_score = log(iq / 80) + log(motivation)) %>% 
  separate(., id, into = c('id', 'gender', 'age'), sep = "_") %>% 
  ggplot(., aes(x = composite_score, y = prof, color = age)) + 
  geom_point() + 
  geom_smooth(method = lm) + 
  ylim(0, 1)




