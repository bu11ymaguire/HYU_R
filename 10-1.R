#라이브러리 데이터셋 가져오기
install.packages("HSAUR")

library(HSAUR)
data("Forbes2000")
ds <- Forbes2000 
ds[!complete.cases(ds),]
str(ds)
