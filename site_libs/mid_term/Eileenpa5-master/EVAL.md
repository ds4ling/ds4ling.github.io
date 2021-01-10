|                             Task                             |  Points | Possible points |
| :----------------------------------------------------------- | ------: | --------------: |
| Create `pa5` project with correct structure                  |    0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |    0.25 |            0.25 |
| Load data and print first 6 rows                             |    0.25 |            0.25 |
| Tidy the data                                                |    0.25 |            0.25 |
| Create `composite_score` variable                            |     1.0 |             1.0 |
| Create table of relevant descriptive stats                   |     0.9 |             1.0 |
| Generate an informative plot data and accurately describe it |     1.0 |             1.0 |
| Fit inclusive model and appropriate nested models            |    0.75 |             1.0 |
| Test two-way interaction and main effects                    |     0.6 |             1.0 |
| Print model summary and test assumptions                     |     1.0 |             1.0 |
| Write up results for publication                             |    1.75 |             2.0 |
| Create private repo                                          |     0.5 |             0.5 |
| Successfully submit pull request                             |     0.5 |             0.5 |
| **Total**                                                    | **9.0** |              10 |

## Notes

- Descriptives: The summary function is ok, but you are missing key information 
regarding a relevant grouping variable (`age`). A combination of `group_by()` 
and `summarize()` would have been more informative. 
- Plot: Good plot and excellent interpretation. It is generally good practice to 
keep your dependent variable on the y-axis. 
- Models: Your inclusive model is fine, but your nested models leave out key 
parameters (main effects), and you didn't do any nested model comparisons (`anova` 
function). Do you know what the intercept represents in the `pa5_modint` model? 
It is unusual to test the interaction and nothing else. You needed to fit a series 
of models removing one factor each time:  
```
my_mod_inc <- lm(prof ~ composite_score * age, data = df_tidy)  # inclusive model
my_mod_add <- lm(prof ~ composite_score + age, data = df_tidy)  # nested model, add
my_mod_age <- lm(prof ~ composite_score, data = df_tidy)        # nested model, no age
my_mod_com <- lm(prof ~ age, data = df_tidy)                    # nested model, no comp
my_mod_nul <- lm(prof ~ 1, data = df_tidy)                      # null model
```
- The tests for assumptions are good. 
- Results write-up: You did a great write up. It is quite accurate for the models 
that you fit. The only problem is that you didn't fit all the models you needed to. 
Recall that the instructions asked you to test main effects *and* the two-way 
interaction. 


