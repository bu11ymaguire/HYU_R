# 예제
head(pressure)

plot(pressure$temperature,pressure$pressure,
     main='온도와 압력(기압)', xlab = ('온도'), ylab = '기압' )

# 자료를 확인할때 사용하는 확인 작업
head(cars)

# 산점도 작성
plot(cars$speed,
     cars$dist,
     main='자동차 속도와 제동거리',
     xlab='속도',ylab = '제동거리'
     
# 상관관계 분석하기
cor(cars$speed, cars$dist)

# 데이터 확인
st <- data.frame(state.x77)
head(st)

# 다중 산점도 작성
plot(st)

# 다중 상관관계 작성

cor(st)
