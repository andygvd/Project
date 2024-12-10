> plot(gym$`Weight (kg)`, gym$Calories_Burned,
+      main = "Scatterplot of Weight vs Calories Burned",
+      xlab = "Weight",
+      ylab = "Calories Burned",
+      pch = 16,
+      col = "blue")
>      
> correlation <- cor(gym$`Weight (kg)`, gym$Calories_Burned)
> print(paste("Correlation: ", correlation))
[1] "Correlation:  0.0954434730121706"

