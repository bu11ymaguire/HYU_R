age.A <- c(13709, 10974, 7979, 5000, 4250)
age.B <- c(17540, 29701, 36209, 22947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)

ds <- rbind(age.A, age.B, age.C)
colnames(ds)<- c('1970','1990','2010','2030','2050')
ds

#차트를 만듬
barplot(ds, main='인구추정')

barplot(ds, main='인구추정', col=c('green','blue','yellow'))
barplot(ds, main='인구추정', col=c('green','blue','yellow'),beside = TRUE)
barplot(ds, main='인구추정', col=c('green','blue','yellow'),beside = TRUE,legend.text = T)

#범례를 밖으로 뺄 때
par(mfrow=c(1,1),mar = c(5,5,5,7))
barplot(ds, main='인구추정', col=c('green','blue','yellow'),beside = TRUE,legend.text = T, args.legend = list(x='topright',bty='n',inset=c(-0.25,0)))

#범례수정정
par(mfrow=c(1,1),mar = c(5,5,5,7))
barplot(ds, main='인구추정', col=c('green','blue','yellow'),beside = TRUE,legend.text = c('0~14세','15~64세','65세 이상'), args.legend = list(x='topright',bty='n',inset=c(-0.25,0)))
par(mfrow=c(1,1),mar=c(5,4,4,2)+0.1)
