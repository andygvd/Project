> compute_ci <- function(data) {
+     n <- length(data)
+     mean_value <- mean(data)
+     std_error <- sd(data) / sqrt(n)
+     margin <- qt(0.975, df = n - 1) * std_error
+     lower <- mean_value - margin
+     upper <- mean_value + margin
+     return(c(lower, upper))
+ }

> ci_weight <- compute_ci(gym$`Weight (kg)`)
> ci_calories <- compute_ci(gym$Calories_Burned)
> print(paste("95% CI for Weight: [", round(ci_weight[1], 2), ", ", round(ci_weight[2], 2), "]"))
[1] "95% CI for Weight: [ 72.52 ,  75.19 ]"
> print(paste("95% CI for Calories Burned: [", round(ci_calories[1], 2), ", ", round(ci_calories[2], 2), "]"))
[1] "95% CI for Calories Burned: [ 888.27 ,  922.57 ]"
