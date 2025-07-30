getwd() #현재 디렉토리
setwd('C:/users/jwkim/Documents/Rwork') #작업폴더 편경
getwd()

air <-read.csv('airquality.csv',header = T) #디렉토리 내 csv 파일 읽기
head(air) #air를 통해 읽어들인 파일의 헤더값 읽기

class(air) #데이터의 구조를 나타냄

iris

setwd('C:/users/jwkim/Documents/Rwork')

my.iris <- subset(iris) 

write.csv(my.iris,'my_iris.csv',row.names = T)
#iris 데이터를 가져온 my.iris를 작업공간에 행 번호를 유지한채(row.name = T) my_iris.csv로 저장
#write.csv -> 새로운 파일 쓰기, read.csv -> 기존의 파일 읽기
