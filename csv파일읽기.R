getwd() #현재 디렉토리
setwd('C:/users/jwkim/Documents/Rwork') #작업폴더 편경
getwd()

air <-read.csv('airquality.csv',header = T) #디렉토리 내 csv 파일 읽기
head(air) #air를 통해 읽어들인 파일의 헤더값 읽기

class(air) #데이터의 구조를 나타냄
