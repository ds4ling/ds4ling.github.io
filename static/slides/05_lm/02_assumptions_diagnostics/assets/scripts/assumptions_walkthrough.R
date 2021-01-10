# Install ggfortify
mod1 <- lm(mpg ~ wt, data = mtcars)


# 1.
# The regression model is linear in parameters
# Eyeball it


# 2. 
# The mean of residuals is zero
# Check model summary and test manually
# mean(mod1$residuals)

# 3.
# Homoscedasticity of residuals or equal variance
# Left side plots
library(ggfortify)
autoplot(mod1, which = c(1, 3))


# 4. 
# No autocorrelation of residuals
acf(mod1$residuals) # visual inspection
lmtest::dwtest(mod1)  # formal test: Durbin-Watson test

library(DataCombine)
mtcars_data <- data.frame(mtcars, resid_mod1=mod1$residuals)
mtcars_data1 <- slide(mtcars_data, Var="resid_mod1", NewVar = "lag1", slideBy = -1)
mtcars_data2 <- na.omit(mtcars_data1)
mod2 <- lm(mpg ~ wt + lag1, data = mtcars_data2)

acf(mod2$residuals)
lmtest::dwtest(mod2)  # formal test: Durbin-Watson test
summary(mod2)



# 6. 
# Normality of residuals
# Top right in 
autoplot(mod1, which = 2)












# 0. Create project 'diagnostics'
# 1. add folders "slides", "scripts", "data"
# 2. save mtcars to "data" (write_csv)
# 3. load "mtcars" (read_csv)
# 4. walk through diagnostics in Rscript 
# 5. create ioslides
#   - sections
#   - lists
#   - bold, italics
#   - r chunkcs
# 6. add diagnostics to slides 
# 7. convert to slidify 
# 8. create repo, push, github pages




devtools::install_github("ramnathv/slidify")
devtools::install_github("ramnathv/slidifyLibraries")


---  
title       :  
subtitle    :  
author      :  
job         :  
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}  
highlighter : highlight.js  # {highlight.js, prettify, highlight}  
hitheme     : tomorrow      #   
widgets     : []            # {mathjax, quiz, bootstrap}  
mode        : selfcontained # {standalone, draft}  
knit        : slidify::knit2slides  
---
