#1. 데이터 준비
grad <- state.x77[, 'HS Grad'] #state.x77: 미국 주별 데이터 셋
grad

#2. 분석작업
summary(grad) # min, maen, max
var(grad) # 분산
sd(grad) #표준편차

#3. 사분위수
hist(grad, main='주별 졸업율',
     xlab = '졸업율',ylab = '주의갯수',col = 'red')

#4. 박스
boxplot(grad, main='주별 졸업율',
        col = 'orange')

#5. 졸업율이 가장 낮은 주주
# 함수속에 함수
idx <- which(grad==min(grad))
grad[idx] #South Carolina, 37.8

#6. 가장 높은 주(졸업율)
idx<-which(grad==max(grad))
grad[idx] #Utah, 67.3

#Utah
#67.3

#7. 졸업율이 평균 이하인 주
idx<-which(grad<mean(grad))
grad[idx]

#8. 졸업율이 평균 이상인 주
idx<-which(grad>=mean(grad))
grad[idx]
