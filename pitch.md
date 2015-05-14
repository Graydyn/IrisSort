Pitch For Iris Identifier
========================================================
author: Graydyn Young
date: May 14, 2015

Why Should You Use This App?
========================================================

- You have an Iris
- You don't know what species of Iris it is
- You want to know what species of Iris you have for some reason

Iris Is Predicted with LDA
========================================================

We predict which Iris is being used with Linear discriminant analysis.  This method was picked because it's fast, effective for this simple task, and it runs on shinyapps.io.

We are also able to see how certain our algorithm is in it's decision.  It usually will be around 100% certain, but for example if you enter the numbers 6.8, 3.1, 5.4, 1.6 you can see an example of an Iris that is predicted to be a virginica, but could be a versicolor.

Our Data
========================================================

The model was trained using the famous Iris dataset.  Look at it for the sake of putting some code in a slide.


```r
library(datasets)
head(iris, 4)
```

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
```


Impress Your Friends
========================

All of your botanist friends are going to be so impressed when you show them your Iris classification abilities.  No look up tables.  No guide books.  Imagine the possibilities.
