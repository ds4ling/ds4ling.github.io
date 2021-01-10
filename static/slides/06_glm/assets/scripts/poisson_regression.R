n     <- 500
beta0 <- 5
beta1 <- 0.2

x  <- seq(0, 10, length.out = n)
mu <- exp(beta0 + beta1 * x + rnorm(n, 0, 0.2))
y  <- rpois(n = n, lambda = mu)

poisson_plot <- tibble(x, y) %>%
  ggplot(., aes(x = x, y = y)) + 
    geom_point(pch = 21, color = 'white', alpha = 0.5, size = 3) + 
    labs(y = "", x = "") +
    annotate("text", x = 2.5, y = 1000, color = 'white', 
             label = TeX("$Y \\sim P(\\mu)$"), fontface = 2, size = 8) + 
    geom_smooth(method = "glm", method.args = list(family = "poisson"), 
                size = 2, color = "darkred", se = T) + 
    theme_dark() + 
    theme(panel.border = element_rect(fill = NA, color = "black"),  
          plot.background = element_rect(color = "black", fill = "black"), 
          panel.background = element_rect(fill = "black", color  =  NULL))


# Create count data
n_2     <- 200
beta0_a <- 0.09
beta1_a <- 0.06
beta0_b <- 0.82
beta1_b <- 0.06

x_a  <- seq(32, 110, length.out = n_2)
mu_a <- exp(beta0_a + beta1_a * x_a + rnorm(n_2, 0, 0.2))
y_a  <- rpois(n = n_2, lambda = mu_a) + 50

x_b  <- seq(32, 100, length.out = n_2)
mu_b <- exp(beta0_b + beta1_b * x_b + rnorm(n_2, 0, 0.2))
y_b  <- rpois(n = n_2, lambda = mu_b) + 50

poisson_df <- tibble(temp = c(x_a, x_b), 
                     city = rep(c("Tucson", "NYC"), each = n_2), 
                     units =  c(y_a, y_b))
