install.packages('ggplot2')
installed.packages()

library(ggplot2)
ggplot(data = iris, aes(x=Petal.Length, y=Petal.Width))+geom_point()
