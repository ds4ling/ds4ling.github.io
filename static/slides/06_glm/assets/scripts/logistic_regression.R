set.seed(1)

vals <- c(-60, -50, -40, -30, -20, -10, 0, 
           10,  20,  30,  40,  50,  60)
vot <- rep(vals, each = 200)
resp <- c(rbinom(1200, 0:1, 0.15), 
          rbinom(200, 0:1, 0.35),
          rbinom(200, 1, 0.4),
          rbinom(200, 1, 0.55),
          rbinom(100, 1, 0.7),
          rbinom(700, 1, 0.9))

logistic_df <- data.frame(resp = resp, vot = vot)


logistic_df %>% 
  mutate(., x = (vot - mean(vot)) / sd(vot)) %>% 
  ggplot(., aes(x = x, y = resp)) + 
    geom_point() + 
    geom_smooth(method = glm,
                method.args = list(family = "binomial")) + 
    theme_dark()


inv_logit_manual <- function(x){
  1 / (1 + exp(-x))
}

sigmoid <- function(x) {
   1 / (1 + exp(-x))
}

log_plot <- seq(-10, 10, length.out = 300) %>% 
  tibble(x = ., y = sigmoid(.)) %>% 
  ggplot(., aes(x = x, y = y)) + 
    geom_point(pch = 21, color = 'white', alpha = 0.7, size = 7) + 
    #scale_y_continuous(breaks = NULL, labels = NULL) + 
    #scale_x_continuous(breaks = NULL, labels = NULL) + 
    labs(y = "", x = "") + 
    annotate("text", x = -5, y = 0.75, color = 'white', 
             label = TeX("$\\frac{1}{1 + e^{-x}}$"), fontface = 2, size = 8) + 
    theme_dark() + 
    theme(panel.border = element_rect(fill = NA, color = "black"),  
          plot.background = element_rect(color = "black", fill = "black"), 
          panel.background = element_rect(fill = "black", color  =  NA))


