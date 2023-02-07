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
```

</details>
