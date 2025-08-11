#원 그래프
favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
ds <- table(favorite) # ds <- table() : 선호계절 정보를 table 함수를 통해 도수분포를 계산하고 이를 ds에 저장
ds
pie(ds, main="선호 계절",radius = 1) # ds에 저장된 값들을 원 안에서 시계 반대 방향으로 따라가며 파이 조각으로 표시

pie(ds, main="선호 계절",col=c('brown','green','red','black'),radius = 1) # 파이 조각의 색 지정하기

#입체 원 그래프
install.packages('plotrix')
library(plotrix)
pie3D(ds,main="선호 계절",labels=names(ds),
      labelces = 1.0, explode = 0.1, radius = 1.5, col=c('brown','green','red', 'yellow') )
# labels: 파이별 레이블 지정, labelces: 레이블의 폰트 크기, explode: 파이 간 간격

# 선 그래프 : 시계열 데이터 시각화에 주로 쓰임
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)

plot(month, late, main="지각생 통계",type = 'l',lty=1,lwd=1,xlab="month",ylab="Late Cnt")
#plot(x축 데이터, y축 데이터, 제목, 그래프 종류 선택, 선의 종류 선택, 선의 굵기 선택,  x축 레이블, y축 레이블)

