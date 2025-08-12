install.packages('Ecdat')
library(Ecdat)
str(Hdma) #주담대 사용 데이터

tbl <- table(Hdma$deny)
tbl <- tbl / sum(tbl)
tbl

# 대출에 대한 승인/거절 비율은 막대그래프로 나눔 
names(tbl) <- c('승인','거절')
barplot(tbl,main='주택담보대출 승인/거절',
        col = c('green','yellow'),
        ylim=c(0,1),
        ylab='비율')

# 주택가격 담보대출금 비율의 분포도를 히스토그램으로 출력 

hist(Hdma$lvr,main='주택담보대비 대출금 비율',
     col=rainbow(10))

# 대출 신청자가 흑인, 비흑인 여부에 따라서 대출이 거절되는 차이점
black.yn <- table(Hdma$black)

# 흑인 신청자중 거절 비율
black.deney <- sum(Hdma$black=='yes'& Hdma$deny=='yes') / black.yn['yes']

# 비흑인 신청자중 거절 비율
non.black.deney <- sum(Hdma$black=='no' & Hdma$deny=='yes') / black.yn['no']
cat('흑인, 비측인 거절율:',black.deney,non.black.deney,'\n')

black.credit <- mean(Hdma$ccs[Hdma$black=='yes'])
non.black.credit <- mean(Hdma$ccs[Hdma$black=='no'])
cat('흑인, 비흑인 신용등급:',black.credit, non.black.credit,'\n')

df <- Hdma[,c('dir','hir','ccs','mcs')]
point.col <- c('green','red')
plot(df, col = point.col[Hdma$deny])

cor(df)
