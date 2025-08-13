#라이브러리 데이터셋 가져오기
install.packages("HSAUR")

library(HSAUR)
data("Forbes2000")
ds <- Forbes2000 
ds[!complete.cases(ds),]
str(ds)

table(ds$country)
tmp <-sort(table(ds$country), decreasing = T)
top.10.country <- tmp[1:10]
top.10.country

par(mar=c(8,4,4,2))
barplot(top.10.country,
        main='기업수 상위 10개국',
        col=rainbow(10), 
        las = 2
)
par(mar=c(5,4,4,2)) #barplot을 통한 그래프 생성시 Plots 윈도우를 충분히 크게

table(ds$country)
tmp <-sort(table(ds$country), decreasing = T)
top.10.country <- tmp[1:10]
top.10.country

par(mar=c(8,4,4,2))
barplot(top.10.country,
        main='기업수 상위 10개국',
        col=rainbow(10), 
        las = 2
)
par(mar=c(5,4,4,2)) #barplot을 통한 그래프 생성시 Plots 윈도우를 충분히 크게

#업종별 기업의 분포도

table(ds$category)
tmp<-sort(table(ds$category),decreasing = T)
top.10.category<-tmp[1:10]
top.10.category #상위 10개의 업종

par(mar=c(10,4,4,2))
barplot(top.10.category,
        main='기업수 상위 10개 업종',
        col='pink',las=2)
par(mar=c(5,4,4,2))
