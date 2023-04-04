str(drones)
summary(drones)
table(drones$category)
library(ggplot2)

ggplot(drones, aes(x = category)) +
  geom_bar(fill = "cornflowerblue", color = "black") +
  labs(title = "Bar Plot of Drone category",
       x = "Category", y = "Count")
# Create a contingency table of various_applications and group
contingency_table <- table(drones$category, drones$group)

# Perform a chi-squared test
# Create a contingency table of various_applications and group
anova <- aov(weight ~ group, data = drones)
summary(anova)
