head(cars)
dist <- cars[,2]
dist
hist(dist,
     main = 'Histogram 이용한 제동거리 측정' # 제목
     ,xlab='제동거리' # x축 이름
     ,ylab='빈도수', # y축 이름
     border='blue', # 막대 테두리 색깔
     col ='red', # 막대 색깔
     las=2, # x축 글씨 방향
     breaks=5) # 막대계수 조절
