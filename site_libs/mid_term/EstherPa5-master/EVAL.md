|                             Task                             |  Points  | Possible points |
| :----------------------------------------------------------- | -------: | --------------: |
| Create `pa5` project with correct structure                  |     0.25 |            0.25 |
| Create `index.Rmd` with title and author info                |     0.10 |            0.25 |
| Load data and print first 6 rows                             |     0.25 |            0.25 |
| Tidy the data                                                |     0.25 |            0.25 |
| Create `composite_score` variable                            |      1.0 |             1.0 |
| Create table of relevant descriptive stats                   |      1.0 |             1.0 |
| Generate an informative plot data and accurately describe it |     0.40 |             1.0 |
| Fit inclusive model and appropriate nested models            |      1.0 |             1.0 |
| Test two-way interaction and main effects                    |      1.0 |             1.0 |
| Print model summary and test assumptions                     |     0.25 |             1.0 |
| Write up results for publication                             |     1.75 |             2.0 |
| Create private repo                                          |      0.5 |             0.5 |
| Successfully submit pull request                             |      0.5 |             0.5 |
| **Total**                                                    | **8.25** |              10 |

## Notes

- The project does not include an informative title and you did not create `index.Rmd`
- Plot: This is not an ideal plot for the data you have. Remember, when you have two 
continuous variables you will most often use a scatter plot. This type of plot also 
helps you interpret your model. You did not interpret your plot, as required in the 
instructions. 
- Models: Good job fitting the correct models. The instructions stated that you only needed 
to print a summary of the optimal model. 
- You did not test model assumptions.
- Results write-up: The model description was quite good. The interpretation of the results 
is a bit hard to understand in places. I have copy and pasted it below with my comments in 
bold. 

    There was a main effect of age of learning (F(1) = 67.0531, p<0.001) **(good)**, composite interaction (F(1) = 84.6757, p<0.001) **(when you say composite interaction I think you 
    you mean composite score)**, as well as age by composite score interaction (F(1) = 9.8147, p<0.01) **(good)**. The model containing the interaction provided the best fit data (R2 = 0.4518) **(good)**. Overall, proficiency increased as a function of age of learning **(report the appropriate test here)**. However, the size of effect was modulated by composite interaction. **(by the composite score, i.e., language aptitude)**.  Specifically, average composite interaction showed an increase of 0.35436 points +/- 0.07447 (t = 4.758, p <0.001) per year. 
    **(I don't know what this means and the significance test and parameter estimates you report 
    are for the simple effect of age)**. 


