#원 그래프
favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
ds <- table(favorite)
ds
pie(ds, main="선호 계절",radius = 1)

pie(ds, main="선호 계절",col=c('brown','green','red','black'),radius = 1)

#입체 원 그래프
install.packages('plotrix')
library(plotrix)
pie3D(ds,main="선호 계절",labels=names(ds),
      labelces = 1.0, explode = 0.1, radius = 1.5, col=c('brown','green','red', 'yellow') )

# 선의 그래프프
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)

plot(month, late, main="지각생 통계",type = 'l',lty=1,lwd=1,xlab="month",ylab="Late Cnt")
