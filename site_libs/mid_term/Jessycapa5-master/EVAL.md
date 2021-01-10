|                             Task                             |  Points  | Possible points |
| :----------------------------------------------------------- | -------: | --------------: |
| Create `pa5` project with correct structure                  |     0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |     0.25 |            0.25 |
| Load data and print first 6 rows                             |     0.25 |            0.25 |
| Tidy the data                                                |     0.25 |            0.25 |
| Create `composite_score` variable                            |      1.0 |             1.0 |
| Create table of relevant descriptive stats                   |      1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |     0.75 |             1.0 |
| Fit inclusive model and appropriate nested models            |      0.9 |             1.0 |
| Test two-way interaction and main effects                    |      0.8 |             1.0 |
| Print model summary and test assumptions                     |      1.0 |             1.0 |
| Write up results for publication                             |      1.0 |             2.0 |
| Create private repo                                          |      0.5 |             0.5 |
| Successfully submit pull request                             |      0.5 |             0.5 |
| **Total**                                                    | **8.45** |              10 |

## Notes

- Plot: Good plot and pretty good interpretation. The only thing missing is 
the fact that the interaction you hypothesized might be correct. The slope of 
the line for the older group appears to be steeper, i.e., the effect of age 
appears to be neutralized for people with high scores on the composite measure.
- Models: You included everything except the null model. How do you test the main 
effect of age? Without the nested model comparison you have to rely on the model 
summary. A complete answer would have included the following:  
```
my_mod_inc <- lm(prof ~ composite_score * age, data = df_tidy)  # inclusive model
my_mod_add <- lm(prof ~ composite_score + age, data = df_tidy)  # nested model, add
my_mod_age <- lm(prof ~ composite_score, data = df_tidy)        # nested model, no age
my_mod_com <- lm(prof ~ age, data = df_tidy)                    # nested model, no comp
my_mod_nul <- lm(prof ~ 1, data = df_tidy)                      # null model
```
- The tests for assumptions are good. 
- Results write-up: The model description is pretty good. You didn't mention how you 
would test main effects or the two-way interaction. You didn't say anything about how 
the categorical factor was coded either. The interpretation of the results is missing 
a lot of information. You only talked about the interaction, but didn't interpret it. 
You only report the F-ratio of the omnibus model test. There is no mention of main 
effects. 

