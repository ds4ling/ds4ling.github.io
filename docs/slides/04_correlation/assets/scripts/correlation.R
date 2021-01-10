

## @knitr create_vocab_data

# Create data ------------------------------------------------------------------

# For reproducibility
set.seed(234532)

# Fit details
n       <- 2e3   # 2k participants per group
beta0   <- 4.5   # yintercept @ 4 (youngest age)
beta1_0 <- 1100  # change in vocab size per year
sigma_0 <- 1.7e3 # avoid -vocab size, but not too perfect

beta1_1 <- 1480  # change in vocab size per year
sigma_1 <- 1.7e3 # avoid -vocab size, but not too perfect

# x and y vars
ages    <- seq(from = 4, to = 15, length.out = n)
vocab_0 <- beta0 + ages * beta1_0 + rnorm(n = n, sd = sigma_0)
vocab_1 <- beta0 + ages * beta1_1 + rnorm(n = n, sd = sigma_1)

# Create df
vocab_df <- data.frame(ages = c(ages, ages), 
                       vocab = c(vocab_0, vocab_1)) %>% 
  mutate(., count = row_number(), 
            reader_type = if_else(count >= length(count) / 2, 
                            true = "frequent", false = "average"))




## @knitr create_vocab_table

# Create table -----------------------------------------------------------------
vocab_sample <- vocab_df %>%
  sample_n(., size = 12) %>% 
  select(., x = ages, y = vocab) %>%
  mutate(., x = x %>% round(., 2),
            y = (y / 1000) %>% round(., 2), 
            Vocab_sample = 1:length(x),
            z_x = ((x - mean(x)) / sd(x)) %>% round(., 2),
            z_y = ((y - mean(y)) / sd(y)) %>% round(., 2),
           `(z_x)(z_y)`  = (z_x * z_y) %>% round(., 2)) %>% 
  select(., Vocab_sample, x:`(z_x)(z_y)`)

sample_sums <- colSums(vocab_sample)
sample_means <- colMeans(vocab_sample)
sample_sds <- map_dbl(vocab_sample, sd)


vocab_table1 <- vocab_sample %>% 
  add_row(.,  Vocab_sample = NA) %>% 
  add_row(.,  Vocab_sample = 'Sum', 
              x = sample_sums[2], 
              y = sample_sums[3], 
              z_x = sample_sums[4] %>% round, 
              z_y = sample_sums[5] %>% round, 
             `(z_x)(z_y)` = sample_sums[6]) %>% 
  add_row(.,  Vocab_sample = 'Mean', 
              x = sample_means[2] %>% round(., 2), 
              y = sample_means[3] %>% round(., 2), 
              z_x = sample_means[4] %>% round(., 2), 
              z_y = sample_means[5] %>% round(., 2)) %>% 
  add_row(.,  Vocab_sample = 'SD', 
              x = sample_sds[2] %>% round(., 2), 
              y = sample_sds[3] %>% round(., 2), 
              z_x = sample_sds[4] %>% round(., 2), 
              z_y = sample_sds[5] %>% round(., 2), 
             `(z_x)(z_y)` = NA)

vocab_table2 <- vocab_sample %>% 
  add_row(.,  Vocab_sample = NA) %>% 
  add_row(.,  Vocab_sample = 'Sum', 
              x = sample_sums[2], 
              y = sample_sums[3], 
              z_x = sample_sums[4] %>% round, 
              z_y = sample_sums[5] %>% round, 
             `(z_x)(z_y)` = sample_sums[6]) %>% 
  add_row(.,  Vocab_sample = 'Mean', 
              x = sample_means[2] %>% round(., 2), 
              y = sample_means[3] %>% round(., 2), 
              z_x = sample_means[4] %>% round(., 2), 
              z_y = sample_means[5] %>% round(., 2)) %>% 
  add_row(.,  Vocab_sample = 'SD', 
              x = sample_sds[2] %>% round(., 2), 
              y = sample_sds[3] %>% round(., 2), 
              z_x = sample_sds[4] %>% round(., 2), 
              z_y = sample_sds[5] %>% round(., 2), 
             `(z_x)(z_y)` = NA) %>% 
  mutate(., Vocab_sample = cell_spec(Vocab_sample, "html", 
                            color = if_else(is.na(Vocab_sample), "white", "black")), 
             z_x = cell_spec(z_x, "html", 
                            color = if_else(is.na(z_x), "white", "black")), 
             z_y = cell_spec(z_y, "html", 
                            color = if_else(is.na(z_y), "white", "black")),
            `(z_x)(z_y)` = cell_spec(`(z_x)(z_y)`, "html", 
                            color = if_else(is.na(`(z_x)(z_y)`), "white", "black"))) 







