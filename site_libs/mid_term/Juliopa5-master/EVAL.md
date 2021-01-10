|                             Task                             |  Points  | Possible points |
| :----------------------------------------------------------- | -------: | --------------: |
| Create `pa5` project with correct structure                  |     0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |     0.25 |            0.25 |
| Load data and print first 6 rows                             |     0.25 |            0.25 |
| Tidy the data                                                |     0.25 |            0.25 |
| Create `composite_score` variable                            |      1.0 |             1.0 |
| Create table of relevant descriptive stats                   |      1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |      0.9 |             1.0 |
| Fit inclusive model and appropriate nested models            |      1.0 |             1.0 |
| Test two-way interaction and main effects                    |      1.0 |             1.0 |
| Print model summary and test assumptions                     |     0.95 |             1.0 |
| Write up results for publication                             |      1.5 |             2.0 |
| Create private repo                                          |      0.5 |             0.5 |
| Successfully submit pull request                             |      0.5 |             0.5 |
| **Total**                                                    | **9.35** |              10 |

## Notes

- Descriptives: Nice job, but you really made that a lot harder than it needed 
to be!
- Plot: This is not an ideal plot for the data you have. Remember, when you have two 
continuous variables you will most often use a scatter plot. This type of plot also 
helps you interpret your model. That said, you did a great job getting as much info 
as possible with age on the x-axis. I'm actually quite impressed you picked up on the 
composite score difference in the older group with those colors. Now, think of what it 
would look like in scatter plot (with model fits).
- Models: Perfect!
- Model assumptions: Good. Only thing missing is a qqplot to test for normality of 
residuals. 
- Results write-up: The model description is great. The interpretation of the results 
is nearly perfect, but a bit awkward in a few spots and I think you misunderstood 
the interaction. For example...

```
Overall, proficiency decreased as a function of age. 
However, the size of the effect was modulated by aptitude.
```
This is a bit odd because age is not coded as a continuous predictor. Proficiency 
differed as a function of age, but it didn't decrease as a function of age (this is 
dependent upon your reference group and your final model used `older` as the baseline). 
In other words, if anything, it increased, based on your model. Ideally you would have
switched the predictors in the two sentences.  
```
Overall, proficiency increased as a function of aptitude. 
However, the size of the effect was modulated by age.
```
Make sense? Older people had a steeper slope (hence the interaction). So if you have a 
low language aptitude score, then learning at a younger age is more conducive to a 
higher proficiency score, but if you are a high aptitude learner, then the effect of 
age is neutralized. That is, high aptitude older learners score just as high on the 
proficiency measurement as the younger learners. 

