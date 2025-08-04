favorite <- c('WINTER','SUMMER','SPRING','SUMMER',
              'SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')

favorite
table(favorite)

ds <- table(favorite)
ds

barplot(ds, main = 'favorite season',col = 'purple') #한가지 색깔
#barplot(table 변수, main = '상단 제목 이름', col = '색깔')
barplot(ds, main = 'favorite season', col=c('blue','red','green','yellow')) #각각의 색을 넣을때

#팔레트에서 색을 지정하기
barplot(ds, main = 'favorite season', col= rainbow(4))

barplot(ds, main='favorite season', col = 'blue', xlab = '계절', ylab = '빈도수' )

barplot(ds, main='favorite season', col = 'green', horiz=TRUE)

barplot(ds, main='favorite season', col = 'red',names=c('FA','SP','SU','WI'))

barplot(ds, main = 'favorite season', col = 'yellow', las=2)

colors()

# 색을 바꾸는 옵션:
# 1. blue , red, yellow, green 과 같이 색을 직접 입력
# 2. #0000FF
# 3. RGB
