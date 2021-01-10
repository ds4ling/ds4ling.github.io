# pa5

|                             Task                             | Points | Possible points |
| :----------------------------------------------------------- | -----: | --------------: |
| Create `pa5` project with correct structure                  |   0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |   0.25 |            0.25 |
| Load data and print first 6 rows                             |   0.25 |            0.25 |
| Tidy the data                                                |   0.25 |            0.25 |
| Create `composite_score` variable                            |    1.0 |             1.0 |
| Create table of relevant descriptive stats                   |    1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |    0.9 |             1.0 |
| Fit inclusive model and appropriate nested models            |    0.6 |             1.0 |
| Test two-way interaction and main effects                    |    0.0 |             1.0 |
| Print model summary and test assumptions                     |    1.0 |             1.0 |
| Write up results for publication                             |    1.6 |             2.0 |
| Create private repo                                          |    0.5 |             0.5 |
| Successfully submit pull request                             |    0.5 |             0.5 |
| **Total**                                                    |   **** |              10 |

## Notes

- Plot: Good job on the plot. You should explain the interaction in more detail.
- Models: Your inclusive model does not include the additive effect of `compAptScore`. 
The instructions indicate that you need to fit all the appropriate nested models 
and test for main effects. You didn't do this. How do you know if your predictors and 
higher order variables significantly add to the model?
- Nice work testing the model assumptions (though the model is incorrectly specified). 
- Results write-up: Good model description. You state that you used nested model 
comparisons to assess main effects and the two-way interaction, but they are nowhere 
to be found. Regarding your report of the results, you do not report any main effects 
or interactions (which makes sense because I don't think you tested them). You interpret 
the age variable, but don't mention the interaction. Recall that the age effect is 
misleading because of the interaction, which you noticed in your description of the plot. 
Specifically, older learners with high scores on the composite aptitude measure do as well 
regarding proficiency as younger learners with similar composite scores. This is important!



