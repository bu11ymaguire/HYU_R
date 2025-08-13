# 10-1.R에서 이어짐
#업종별 기업자산
tmp <- ds[ds$category %in% names(top.10.category),]
# A %in% 연산자: A에 있는 값들 중에서 B에 속하는 값을 찾는 역할
levels(tmp$category)
tmp$category <- factor(tmp$category)
levels(tmp$category)

# 업종별 기업자산 분포도

par(mar=c(10,4,4,2))
boxplot(assets~category, data=tmp,
      ylim=c(0,100),xlab='',las=2)
par(mar=c(5,4,4,2))
