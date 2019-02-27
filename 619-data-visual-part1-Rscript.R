install.packages("tidyverse")
library(ggplot2)
library(tidyverse)

a <- read.csv("619-data-visual-part1.csv", header=TRUE)
View(a)

# (1) let's plot it
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores))

# (2) change color
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores, color = category))

# (3) change size
a$category <- factor(a$category, levels=c("low", "mid", "high"))
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores, size = category))

# can we do both color and size?

# (4) change transparency/shape
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores, alpha = category))
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores, shape = category))

# (5) change color
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores), color = "blue")

ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores, color = category), shape = 18, fill = "green")

# (6) facets
ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores)) + 
  facet_wrap(~category, nrow = 1)

ggplot(data = a) + 
  geom_point(mapping = aes(x = age.months, y = scores)) + 
  facet_wrap(gender~category)
