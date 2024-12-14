> correlation <- cor(data$`Weight (kg)`, data$Age, use = "complete.obs")
> cat("Correlation between Weight (kg) and Age:", correlation, "\n")
Correlation between Weight (kg) and Age: -0.03633963 
> plot <- ggplot(data, aes(x = Age, y = `Weight (kg)`)) +
+     geom_point(color = "blue") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Scatter Plot of Weight vs Age",
+          x = "Age",
+          y = "Weight (kg)") +
+     theme_minimal()
> print(plot)
`geom_smooth()` using formula = 'y ~ x'

> test2 <- t.test(data$`Calories_Burned`, mu = 800, alternative = "greater")
> cat("\nHypothesis 2 Results:\n")

Hypothesis 2 Results:
> cat("Test statistic:", test2$statistic, "\n")
Test statistic: 12.06139 
> cat("P-value:", test2$p.value, "\n")
P-value: 1.284052e-31 
> if (test2$p.value < 0.05) {
+     cat("Reject the null hypothesis: The average calories burned is significantly greater than 800.\n")
+ } else {
+     cat("Fail to reject the null hypothesis: There is no evidence that the average calories burned is greater than 800.\n")
+ }
Reject the null hypothesis: The average calories burned is significantly greater than 800.
