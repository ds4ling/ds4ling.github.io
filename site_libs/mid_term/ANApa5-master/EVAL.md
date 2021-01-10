|                             Task                             |  Points | Possible points |
| :----------------------------------------------------------- | ------: | --------------: |
| Create `pa5` project with correct structure                  |    0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |    0.25 |            0.25 |
| Load data and print first 6 rows                             |    0.25 |            0.25 |
| Tidy the data                                                |    0.25 |            0.25 |
| Create `composite_score` variable                            |     1.0 |             1.0 |
| Create table of relevant descriptive stats                   |     1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |    0.75 |             1.0 |
| Fit inclusive model and appropriate nested models            |    0.75 |             1.0 |
| Test two-way interaction and main effects                    |    0.90 |             1.0 |
| Print model summary and test assumptions                     |     1.0 |             1.0 |
| Write up results for publication                             |     1.5 |             2.0 |
| Create private repo                                          |     0.5 |             0.5 |
| Successfully submit pull request                             |     0.5 |             0.5 |
| **Total**                                                    | **8.9** |              10 |

## Notes

- Plot: Good plot, but inadequate description. Here you should have interpreted 
the plot in prose explained what exactly can be seen. 
- Models: Your inclusive model does includes the additive effect of age and the 
age:composite_score interaction, but not the additive effect of composite score. 
Recall that you need to use the asterisk (`prof ~ age * composite_score`) or 
include each input variable individually 
(`prof ~ age + composite_score + age:composite_score`). Because of this your 
F-ratios are a bit off, but you more or less came to the same conclusion. Also, 
you printed summaries for every model you fit. The instructions indicate that 
you should only print the summary of the best model (in this case there is a 
significant interaction so we retain that model). You don't have a slope estimate 
of composite_score. Good job testing model assumptions. 
- Results write-up: Careful. You shouldn't copy the examples I gave you in class 
word for word. For example, you wrote "The production data were analyzed using 
generalized linear model". You don't have production data and you didn't fit a 
generalized linear model. You centered the composite_score variable when you 
cleaned the data, but you didn't include the variable when you fit the models 
(`compc`). Overall, the model interpretation was pretty good.


