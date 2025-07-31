install.packages("carData")
library("carData")

# 1. 자료 준비 단계
room.class <- TitanicSurvival$passengerClass #선실에 대한 정보
room.class

# 2. 도수분포를 계산
tbl<- table(room.class)
tbl
sum(tbl)

# 3. 막대그래프로 시각화
barplot(tbl, main='선실별 탑승객', 
        xlab='선실 등급', ylab='탑승객수',col=c('blue','green','yellow'))


# 4. 원 그래프 시각화
tbl/sum(tbl) #전체 타이타닉호의 탑승객수
# 선실별 탑승객수를 전체 탑승객수로 나누어 선실별 탑승객 비율계산식식
par(mar=c(1,1,4,1))
pie(tbl, main = '선실별 탑승객', col = c('blue','green','yellow'))
par(mar = c(5,1,4,1,4,1,2,1))
