> model <- lm(`Weight (kg)` ~ Age, data = data)
> summary(model)

Call:
lm(formula = `Weight (kg)` ~ Age, data = data)

Residuals:
    Min      1Q  Median      3Q     Max 
-34.610 -15.884  -3.902  12.259  57.078 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 76.30213    2.26437  33.697   <2e-16 ***
Age         -0.06327    0.05584  -1.133    0.257    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 21.2 on 971 degrees of freedom
Multiple R-squared:  0.001321,	Adjusted R-squared:  0.0002921 
F-statistic: 1.284 on 1 and 971 DF,  p-value: 0.2574

r_squared <- summary(model)$r.squared
> cat("R-squared: ", r_squared, "\n")
R-squared:  0.001320569 

> cat("Linear regression equation:\n")
Linear regression equation:

> cat(paste0("Weight (kg) = ", round(coef(model)[1], 2), " + Age * ", round(coef(model)[2], 2), "\n"))
Weight (kg) = 76.3 + Age * -0.06

> hist(model$residuals,
+      main="Histogram of Residuals",
+      xlab="Residuals",
+      col="darkmagenta",
+      freq=FALSE)

> plot(data$Age, data$`Weight (kg)`,
+      xlab="Age",
+      ylab="Weight (kg)",
+      main="Age vs Weight with Regression Line",
+      col="blue")

