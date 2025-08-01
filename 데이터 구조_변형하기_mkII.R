ds <- read.csv('C:/Users/jwkim/Documents/Rwork/fdeaths.csv',row.names='year')
ds

my.col <- c('black','blue','red','yellow','purple','dark gray')
my.lty <- 1:6

plot(1:12,ds[1,],main='월별 사망자 추이',type='b',lty=my.lty[1],
     xlab='Month',ylab='사망자수',ylim=c(300,1200),col=my.col[1])

for(i in 2:6){
  lines(1:12,ds[i,],type='b',lty=my.lty[i], col=my.col)
}

legend(x='topright',lty=my.lty,col=my.col,legend=1974:1979)
