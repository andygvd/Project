> test1 <- t.test(data$`Weight (kg)`, mu = 70, alternative = "two.sided")

> cat("Hypothesis 1 Results:\n")
Hypothesis 1 Results:

> cat("Test statistic:", test1$statistic, "\n")
Test statistic: 5.669632 

> cat("P-value:", test1$p.value, "\n")
P-value: 1.886106e-08 

> if (test1$p.value < 0.05) {
+     cat("Reject the null hypothesis: The mean Weight (kg) is significantly different from 70.\n")
+ } else {
+     cat("Fail to reject the null hypothesis: The mean Weight (kg) is not significantly different from 70.\n")
+ }
Reject the null hypothesis: The mean Weight (kg) is significantly different from 70.

> test2 <- t.test(data$Age, mu = 40, alternative = "less")
 
> cat("\nHypothesis 2 Results:\n")

Hypothesis 2 Results:
> cat("Test statistic:", test2$statistic, "\n")
Test statistic: -3.371416 

> cat("P-value:", test2$p.value, "\n")
P-value: 0.0003886445 

> if (test2$p.value < 0.05) {
+     cat("Reject the null hypothesis: The mean Age is significantly less than 40.\n")
+ } else {
+     cat("Fail to reject the null hypothesis: The mean Age is not significantly less than 40.\n")
+ }
Reject the null hypothesis: The mean Age is significantly less than 40.
