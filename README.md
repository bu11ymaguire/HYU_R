# 한양대학교 논문 통과\! 논문작성법과 R통계특강 - R통계특강

본 문서는 '한양대학교 논문 통과\! 논문작성법과 R통계특강' 강의에서 다룬 R의 핵심 기초 문법을 정리한 요약본입니다. R을 사용하여 데이터를 다루고 분석하는 데 필요한 기본적인 함수와 개념들을 기능별로 분류했습니다.

-----

## 1\. 패키지 및 디렉토리 관리 📂

R의 기능을 확장하거나 작업 환경을 설정하는 기본적인 명령어입니다.

### **패키지 관리**

  - **`install.packages("패키지명")`**: 새로운 R 패키지를 설치합니다.
  - **`library(패키지명)`**: 설치된 패키지를 현재 R 세션으로 불러와 사용 가능하게 만듭니다.

<!-- end list -->

```r
install.packages("ggplot2")
library(ggplot2)
```

### **작업 디렉토리**

  - **`getwd()`**: 현재 작업 디렉토리(Working Directory)의 경로를 확인합니다.
  - **`setwd("경로")`**: 작업 디렉토리를 지정된 경로로 변경합니다. 파일 경로를 일일이 입력하지 않아도 되어 편리합니다.

<!-- end list -->

```r
getwd()
setwd("C:/Users/Rwork")
```

-----

## 2\. 데이터 생성 및 입출력 💾

외부 파일을 불러오거나, R 객체를 생성하고 파일로 저장하는 방법입니다.

### **데이터 생성**

  - **`변수 <- 값`**: 변수에 값을 할당합니다. `<-` 연산자는 R의 표준적인 할당 연산자입니다.
  - **`c()`**: 여러 값을 묶어 \*\*벡터(Vector)\*\*를 생성합니다.
  - **`data.frame()`**: 여러 벡터를 묶어 표 형태의 **데이터 프레임**을 만듭니다.
  - **`matrix()`**: 모든 원소가 동일한 타입인 2차원 \*\*행렬(Matrix)\*\*을 만듭니다.

<!-- end list -->

```r
city <- c("Seoul", "Tokyo", "Washington")
rank <- c(1, 3, 2)
city_info <- data.frame(city, rank)
```

### **파일 입출력**

  - **`read.csv("파일경로")`**: CSV(Comma-Separated Values) 파일을 불러옵니다.
  - **`write.csv(데이터, "파일명.csv")`**: 데이터를 CSV 파일로 저장합니다.
  - **`read.xlsx()` (`xlsx` 패키지)**: 엑셀 파일을 불러옵니다.

<!-- end list -->

```r
# CSV 파일 읽기 및 쓰기
air_data <- read.csv("airquality.csv", header = TRUE)
write.csv(air_data, "my_air.csv", row.names = FALSE)
```

-----

## 3\. 데이터 확인 및 조작 (핸들링) 🔍

데이터의 구조를 파악하고, 원하는 형태로 가공하는 데 필수적인 기능입니다.

### **데이터 구조 확인**

  - **`head(데이터)`**, **`tail(데이터)`**: 데이터의 처음 또는 마지막 6행을 출력합니다.
  - **`str(데이터)`**: 데이터의 전체적인 구조(structure)를 요약해서 보여줍니다.
  - **`dim(데이터)`**, **`nrow(데이터)`**, **`ncol(데이터)`**: 데이터의 차원(행, 열), 행의 수, 열의 수를 각각 확인합니다.
  - **`colnames(데이터)`**, **`rownames(데이터)`**: 데이터의 열 이름과 행 이름을 확인합니다.
  - **`class(데이터)`**: 데이터의 자료구조(타입)를 확인합니다.
  - **`levels(데이터)`**: 범주형 데이터(Factor)의 종류를 확인합니다.

<!-- end list -->

```r
head(iris)
str(iris)
dim(iris)
```

### **데이터 추출 (Indexing & Slicing)**

  - **`데이터[행, 열]`**: 대괄호를 사용하여 데이터의 특정 부분을 선택합니다.
  - **`$`**: `데이터$열이름` 형식으로 특정 열을 선택합니다.

<!-- end list -->

```r
# 1행부터 5행까지, 1열과 3열 선택
subset_iris <- iris[1:5, c(1, 3)]

# Species 열만 선택
species_column <- iris$Species
```

### **데이터 연산 및 처리**

  - **`table()`**: 데이터의 빈도수를 계산합니다.
  - **`colSums()`, `colMeans()`, `rowSums()`, `rowMeans()`**: 열 또는 행 방향으로 합계와 평균을 계산합니다.
  - **`summary()`**: 데이터의 기초 기술통계량(최솟값, 중앙값, 평균, 최댓값 등)을 요약하여 보여줍니다.
  - **`min()`, `max()`, `mean()`, `var()`, `sd()`**: 최솟값, 최댓값, 평균, 분산, 표준편차를 각각 계산합니다.
  - **`sort()`**: 데이터를 정렬합니다 (`decreasing=T`는 내림차순).
  - **`apply(데이터, 방향, 함수)`**: 행(1) 또는 열(2) 방향으로 특정 함수를 일괄 적용합니다.

<!-- end list -->

```r
# Species별 개체 수 확인
table(iris$Species)

# 1~4열의 열별 평균 계산
apply(iris[, 1:4], 2, mean)
```

-----

## 4\. 데이터 시각화 📊

데이터를 그래프로 표현하여 직관적인 인사이트를 얻는 과정입니다.

  - **`plot()`**: 기본적인 산점도(scatter plot)나 선 그래프를 그립니다. 시각화의 시작점 역할을 합니다.
  - **`barplot()`**: 막대 그래프를 그립니다.
  - **`hist()`**: 히스토그램을 그립니다.
  - **`boxplot()`**: 상자 그림(Box Plot)을 그립니다.
  - **`pie()`**: 원 그래프를 그립니다.
  - **`lines()`**: 기존 그래프 위에 선을 덧그립니다.
  - **`legend()`**: 그래프에 범례를 추가합니다.

<!-- end list -->

```r
# iris 데이터의 꽃잎 길이와 너비로 산점도 그리기
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Iris Petal Dimensions",
     xlab = "Petal Length",
     ylab = "Petal Width",
     col = "blue")

# Species별 꽃잎 길이 Box Plot
boxplot(Petal.Length ~ Species, data = iris,
        main = "Petal Length by Species",
        col = c("red", "green", "blue"))
```

-----

## 5\. 프로그래밍 기초 ⚙️

반복 작업이나 조건부 실행을 위한 프로그래밍의 기본 요소입니다.

  - **`for (변수 in 범위) { ... }`**: 주어진 범위만큼 코드를 반복 실행하는 **반복문**입니다.
  - **`#` (주석)**: `#` 기호 뒤의 내용은 코드로 실행되지 않으며, 코드에 대한 설명을 작성할 때 사용합니다.
  - **`cat()`**: 여러 변수나 문자열을 이어서 콘솔 창에 출력합니다.

<!-- end list -->

```r
# 1단부터 9단까지 구구단 출력
for (i in 1:9) {
  for (j in 1:9) {
    cat(i, "*", j, "=", i*j, "\n")
  }
}
```
