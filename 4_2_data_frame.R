city <- c("Seoul","Tokyo","washington")
rank <- c(1,3,2)

city.info <- data.frame(city, rank)
city.info

#iris 대표적인 R data.frame중 하나이다.
iris

iris[,c(1:2)] #아이리스 데이터셋에서 1~2열의 모든 데이터를 출력해라
iris[,c(1,3,5)]

iris[,c("Sepal.Length","Species")] # == iris[,c(1,5)]

iris[1:5,]
iris[c(1,5),]

iris[1:5, c(1,3)]

dim(iris) #행과 열의 갯수를 보여줘라
nrow(iris)
ncol(iris)

colnames(iris)
rownames(iris)

head(iris) #데이터셋의 앞부분 일부를 보여줘라

tail(iris) #데이터셋의 뒷부분 일부를 보여줘라

str(iris) #데이터셋의 요약정보를 보여줘라

levels(iris[,5]) # 품종의 종류를 보여줘라

table(iris[,"Species"])

colSums(iris[,-5]) #열별 합계 데이터를 구해라

colMeans(iris[,-5]) #열별 평균 데이터를 구해라

rowSums(iris[,-5]) #행별 합계 데이터를 구해라
rowMeans(iris[,-5]) #행별 평균 데이터를 구해라
