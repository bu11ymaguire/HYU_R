month = 1: 12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
late3 = c(8,7,8,10,11,6,5,7,3,4,5,4)
plot(month,late1,main="Late Students",
     type='b',lty=2,col='red',xlab="Month",ylab='Late cnt')
#한 그래프에 객체 여러개 추가하기 첫번째 객체를 plot으로 만들고 
lines(month,late2,type='l',col='blue') #나머지 객체는 lines()함수 이용!
lines(month,late3,type='b',col='green')


#상자그림
cars
dist = cars[,2]
boxplot(dist, main='자동차 제동거리')

boxplot.stats(dist)

iris
boxplot(Petal.Length~Species,data=iris,main='품종별 꽃잎의 길이',col=c('green','yellow','blue'))
boxplot(Sepal.Length~Species,data=iris,main='품종별 꽃받침의 길이',col=c('green','yellow','blue'))

#산점점도
mtcars

wt = mtcars$wt
mpg = mtcars$mpg
dist = mtcars$dist

wt
mpg

plot(wt, mpg, main="중량-연비 그래프",xlab="중량",ylab="연비(mpg)",col='red',pch=16)
plot(wt,dist,main="중량-대기 그래프",xlab="중량",ylab="대기",col='red',pch=16)

vars = c('mpg','disp','drat','wt')
target = mtcars[, vars]
target
head(target)

plot(target, main='Multi plots') #행렬 산점도
