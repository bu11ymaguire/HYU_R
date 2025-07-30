install.packages('svDialogs')
library(svDialogs)
user.input<-dlgInput('Input incomes')$res
user.input #프롬프트에서 넣은 값이 출력

incom<-as.numeric(user.input) 
incom #incom은 user.input을 숫자형태로 형 변환

tax <- incom*0.33

cat('세금: ',tax)
