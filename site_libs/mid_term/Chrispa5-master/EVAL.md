# pa5

|                             Task                             |  Points  | Possible points |
| :----------------------------------------------------------- | -------: | --------------: |
| Create `pa5` project with correct structure                  |     0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |     0.25 |            0.25 |
| Load data and print first 6 rows                             |     0.25 |            0.25 |
| Tidy the data                                                |     0.25 |            0.25 |
| Create `composite_score` variable                            |      1.0 |             1.0 |
| Create table of relevant descriptive stats                   |      1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |     0.95 |             1.0 |
| Fit inclusive model and appropriate nested models            |      1.0 |             1.0 |
| Test two-way interaction and main effects                    |      1.0 |             1.0 |
| Print model summary and test assumptions                     |      1.0 |             1.0 |
| Write up results for publication                             |      1.9 |             2.0 |
| Create private repo                                          |      0.5 |             0.5 |
| Successfully submit pull request                             |      0.5 |             0.5 |
| **Total**                                                    | **9.85** |              10 |

## Notes

- Plot: Good plot and good interpretation. Nice job. The only thing that you could 
have done to make it better would be to have included `age` in the initial `aes()` 
call. This would have fit two lines to your data and would have fiven you some insight 
regarding the age by `cas_stan` interaction. This is worthwhile because this interaction 
is part of your hypotheses about the data. What you would have seen is that the slope of 
the line for the older group appears to be steeper, i.e., the effect of age appears to 
be neutralized for people with high scores on the composite measure.
- Models: Perfect!
- Testing assumptions: Perfect!
- Results write-up: The model description is great. The interpretation of the results 
is nearly perfect. Specifically, in the last line you say:  
"However, for the older participants, their average per-unit increase was 0.048 points (.015 se) less than the younger speakers."  
This is actually backwards. It is the yonger groups that has the less steep slope. This 
ends up being important with regard to your hypothesis about the `age` by `cas_stan` 
interaction. While younger learners have overall higher proficiency scores (main effect), 
we cannot completely rely on this effect because of the interaction. Specifically, the 
age effect is neutralized in high aptitude learners, suggesting aptitude can trump 
early learning with regard to proficiency exams (in this fake data). Here is the plot 
that would have helped you to see this: 
![plot](plot.png)
- Really great work. Good write up and good analysis. 

