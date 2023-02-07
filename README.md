# Flower

<details>
<summary>Iris</summary>
<br>

This makes use of the iris dataset in R. <br>
Let's get a visual overview of the dimensions for each species of iris. We did four different boxplots comparing sepal length, sepal width, petal width, and petal length for each species of iris.

 <img
  src="https://github.com/apmiravite/Flower/blob/main/Iris/images/sepal%20length.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
  
 <img
  src="https://github.com/apmiravite/Flower/blob/main/Iris/images/sepal%20width.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
  
 <img
  src="https://github.com/apmiravite/Flower/blob/main/Iris/images/petal%20width.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
  
 <img
  src="https://github.com/apmiravite/Flower/blob/main/Iris/images/petal%20length.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
 
The boxplots are not on the same level, it is very likely that the means of the dimensions of the iris species are not the same. We can confirm this through analysis of variance (ANOVA). 
 
<img
  src="https://github.com/apmiravite/Flower/blob/main/Iris/images/iris%20aov.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
 
With all p-values less than 0.05, we can reject the null hypothesis that the dimensions of the iris species are the same, and that the average from at least one of the groups is different from the rest.

Since the null hypothesis is rejected, we do additional tests to determine which groups differ (and which ones are the same). This can be done by doing a pairwise examination of two treatment groups.

```R
TukeyHSD(mod_sep_Length, conf.level = 0.95)
 Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = Sepal.Length ~ Species, data = iris)

$Species
                      diff       lwr       upr p adj
versicolor-setosa    0.930 0.6862273 1.1737727     0
virginica-setosa     1.582 1.3382273 1.8257727     0
virginica-versicolor 0.652 0.4082273 0.8957727     0
```
```R
TukeyHSD(mod_pet_Length, conf.level = 0.95)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = Petal.Length ~ Species, data = iris)

$Species
                      diff     lwr     upr p adj
versicolor-setosa    2.798 2.59422 3.00178     0
virginica-setosa     4.090 3.88622 4.29378     0
virginica-versicolor 1.292 1.08822 1.49578     0
```
```R
TukeyHSD(mod_sep_Width, conf.level = 0.95)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = Sepal.Width ~ Species, data = iris)

$Species
                       diff         lwr        upr     p adj
versicolor-setosa    -0.658 -0.81885528 -0.4971447 0.0000000
virginica-setosa     -0.454 -0.61485
```

</details>
