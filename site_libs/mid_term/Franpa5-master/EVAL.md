# pa5

|                             Task                             |  Points  | Possible points |
| :----------------------------------------------------------- | -------: | --------------: |
| Create `pa5` project with correct structure                  |     0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |     0.25 |            0.25 |
| Load data and print first 6 rows                             |     0.25 |            0.25 |
| Tidy the data                                                |     0.25 |            0.25 |
| Create `composite_score` variable                            |      1.0 |             1.0 |
| Create table of relevant descriptive stats                   |      0.0 |             1.0 |
| Generate an informative plot data and accurately describe it |      0.9 |             1.0 |
| Fit inclusive model and appropriate nested models            |     0.75 |             1.0 |
| Test two-way interaction and main effects                    |      0.0 |             1.0 |
| Print model summary and test assumptions                     |      0.7 |             1.0 |
| Write up results for publication                             |      1.4 |             2.0 |
| Create private repo                                          |      0.5 |             0.5 |
| Successfully submit pull request                             |      0.5 |             0.5 |
| **Total**                                                    | **6.75** |              10 |

## Notes

- Tidy data: You did a few things that seem a bit strange. I don't really know why you 
removed motivation or gathered the data. In the end you had to bring it back so that 
you could create the `composite_score` variable. You did end up using separate, so you 
ended up with the correct tidy dataframe. You just took an unusual path to get there, 
which is what usually happend when you code in the real world. Good job. 
- Plot: Good plot. Remember that it is usually easier to understand if you keep your 
dependent variable on the y-axis. In any case you can clearly see the interaction. Your 
interpretation, however, is leaving out a lot of detail. You claim that older individuals 
have higher overall scores. Careful. You are interpreting a main effect in the presence 
of an interaction. You haven't provided any descriptive stats so it is difficult to say 
if this is even true at this point. Regarding the age by `composite_score` interaction, 
you should have noticed that the slope of the line for the older group appears to be 
steeper, i.e., the effect of age appears to be neutralized for people with high scores 
on the composite measure.
- Models: You got the final model. You did not do any nested model comparisons. Thus you 
have no assessment of main effects and you cannot test the two-way interaction. 
- Testing assumptions: None.
- Results write-up: The model description is great, but you didn't do everything you 
said you did. You report main effects with the incorrect information. I think you may 
have forgotten how to get the F-ratios. You talk about about correlation but you don't 
report the interaction, nor do you interpret it. You are leaving out a large part of the 
puzzle. If was fun to read though!



