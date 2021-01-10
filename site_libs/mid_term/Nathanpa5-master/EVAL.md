|                             Task                             |  Points | Possible points |
| :----------------------------------------------------------- | ------: | --------------: |
| Create `pa5` project with correct structure                  |    0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |    0.25 |            0.25 |
| Load data and print first 6 rows                             |    0.25 |            0.25 |
| Tidy the data                                                |    0.25 |            0.25 |
| Create `composite_score` variable                            |     1.0 |             1.0 |
| Create table of relevant descriptive stats                   |     0.8 |             1.0 |
| Generate an informative plot data and accurately describe it |     0.8 |             1.0 |
| Fit inclusive model and appropriate nested models            |     1.0 |             1.0 |
| Test two-way interaction and main effects                    |     1.0 |             1.0 |
| Print model summary and test assumptions                     |     1.0 |             1.0 |
| Write up results for publication                             |     1.5 |             2.0 |
| Create private repo                                          |     0.5 |             0.5 |
| Successfully submit pull request                             |     0.5 |             0.5 |
| **Total**                                                    | **9.1** |              10 |

## Notes

- Descriptives: The method you used to get the descriptives is fine, but why didn't 
you use the `composite_score` variable you created? Especially if it is the variable 
you will use in your models. 
- Plot: Good interpretation of the plot you made; however, I don't know if it was the best 
plot choice given the data and your hypotheses. You have two continuous variables, `prof` 
and `composite_score`, and one categorical factor, `age`. A scatter plot would be much more 
revealing in this situation and it would allow you to make a qualitative assessment of 
your hypotheses. 
- Models: Perfect!
- Good model diagnostics. 
- Results write-up: The model description is isn't completely accurate. There is no such 
thing (that I know of) as a repeated steps ANOVA (there is a repeated measures ANOVA, but 
you didn't do one here). I think you might be confused by the name of the `anova()` function. 
It does not do an ANOVA (for that one can use `aov()`). Recall that you cannot do an ANOVA 
with continuous predictors. You used a general linear model to fit the data and nested model 
comparisons to test main effects and the two-way interaction. Basically everything you report 
is fine as long as you don't say ANOVA (this may seem like nitpicking, but it would be rather 
misleading to say you did ANOVA). Your reporting of the results is spot on, but you needed to 
go a step further and interpret them. What does the interaction mean? What is the effect size 
regarding `age`? You have this information in your model, so you need to make sure you take 
full advantage of it. 

