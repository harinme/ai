mydata <- iris[,1:4]
fit <- kmeans(x=mydata, centers = 3)
fit
fit$cluster # 각 데이터에 대한 군집 번호
head(iris) 
iris[107:127,]
fit$centers # 중심좌표
fit$totss # 각 군집의 포인트 수 (관찰값 수)

# 군집 시각화
library(cluster)
clusplot( mydata, fit$cluster, color=T, shade=T, labels=2, lines=1 )
# clustplot(  mydata 군집화 대상 데이터셋, 
#             
#             fit$cluster 군집화 결과에서 관측값별 군집번호, 
#             
#             color=T 군집을 표시하는 원의 색깔을 군집별로 다르게 할 지 여부 결정, 
#             
#             shade=T 군집을 표시하는 원안에 빗금을 표시할지 여부를 결정, 
#             
#             labels=2 군집화 대상 데이터셋에서 개별 관측값을 그래프상에 어떻게 나타낼지를 지정 1:관측값을 ○ △ + 와 같은 기호로 표시 2: 관측값을 숫자로 표시, 
#             a   
#             lines = 0 군집의 중심점과 중심점을 연결하는 선을 표시할지 여부를 결정 0:표시하지 않음 1: 표시함 ) 


# 2번 군집의 자료를 보기
subset(mydata, fit$cluster==2)
fit$size
subset(mydata, fit$cluster==3)

dim(iris)
str(iris)
mydata <- iris[,1:4]
fit<- kmeans(x = mydata, centers = 3)
# 군집의 개수는 어떻게 쓸까? 1. 루트(관찰값) 개수보다 작게 2. str(데이터 셋) Factor가 있따면 levels 수를 한다.
fit
fit$cluster # 군집 내용 
fit$centers # 군집 중심점의 평균
fit$size # 군집의 개수


# 군집 시각화
library(cluster)
clusplot(mydata, fit$cluster, color=T ,shade=T, labels = 2, lines = 1)

subset(mydata, fit$cluster==2)

#표준화하기 ( 변수의 값 차이가 클 때 이를 0~1 사이로 표준화 시키기)
std <- function(x){
  return((x-min(x))/ (max(x)-min(x)))
}

mydata<- apply(iris[,1:4], 2,std) # apply(데이터셋, 2-열 기준/ 1- 행 기준, 함수명)
mydata

ds <- data.frame(name=c('A','B') , 키=c(180,170), 시력=c(1.2,0.9))

ds

ds.std <- apply(ds[,-1], 2, std)
ds.std

#-------
# 분류
# ----------
library(class)
dim(iris)

# 붓꽃의 종류 분류하기
# 관찰값 150개를 분석가에게 주었다.
# train 150*60% -답, test 150*40% - 답


idx <- c(1:25, 51:75, 101:125)
idx

ds.tr.que <- iris[idx, 1:4] # 학습용 문제 50개 준비
ds.tr.ans <- iris[idx,5] # 학습용 문제 답안지 50개 준비
ds.tr.ans

ds.test.que <- iris[-idx,1:4] # 시험 문제 100개 준비
ds.test.ans <- iris[-idx,5] # 시험문제 답안지


pred<- knn(ds.tr.que, ds.test.que, ds.tr.ans, k=3, prob = T)
pred

acc <- mean(pred==ds.tr.ans)
acc
table(pred,ds.test.ans)

# 1. R에서 제공하는 Seatbelts 데이터셋에 대해 k-평균 군집화를 실시하고 결과를 그래프로 출력하시오.
head(Seatbelts)
class(Seatbelts)
dim(Seatbelts)
str(Seatbelts)

# 표준화 함수(0~1 사이 상대 숫자)
std <- function(x){
  return((x-min(x))/ (max(x)-min(x)))
}
ds <- Seatbelts[,1:7]
head(ds)

# • 군집의 수는 2로 한다.
# • Seatbelts 데이터셋에서 마지막에 있는 law 열은 제외하고 군집화를 실행한다.
ds <- Seatbelts[,1:7]
head(ds) 

# • Seatbelts는 각 변수(열)의 값들의 단위의 차이가 많이 나기 때문에 0~1 표준화를 실시한 후 군집화를 실행한다.
ds.std <-apply(ds,2,std)
head(ds.std)
fit <- kmeans(x=ds.std, centers=2)
fit

library(cluster)
clusplot(ds.std, fit$cluster, color=T, shade=T, labels = 2, lines=1)
subset(ds.std, fit$cluster==2)


# 2. mlbench 패키지에서 제공하는 Sonar 데이터셋에 대해 k-평균 군집화를 실시하고 결과를 그래프로 출력하시오. 
 library(mlbench)
 data("Sonar") # 데이터셋 불러오기
 head(Sonar)
 dim(Sonar)

# • 군집의 수는 2로 한다.

 # • Sonar 데이터셋에서 마지막에 있는 Class 열은 제외하고 군집화를 실행한다.
ds <- Sonar[,-61]
fit <- kmeans(ds, centers = 2) 
fit
 
clusplot(ds,fit$cluster, color=T, shade=T, labels = 2, lines=1)

# 3. R에서 제공하는 swiss 데이터셋에 대해 k-평균 군집화를 실시하고 결과를 그래프로 출력하시오.
# • 군집의 수는 3으로 한다.
head(swiss)
fit <- kmeans(swiss, centers = 3)
fit
clusplot(swiss,fit$cluster, color=T, shade=T, labels = 2, lines=1)

#4. R에서 제공하는 rock 데이터셋에 대해 k-평균 군집화를 실시하고 결과를 그래프로 출력하시오.
#• 군집의 수는 3으로 한다.
head(rock)
dim(rock)

std <- function(x){
  return((x-min(x))/ (max(x)-min(x)))
}

ds.rock <- apply(rock, 2, std)
ds.rock

fit <- kmeans(ds.rock,centers=3)
fit
clusplot(ds.rock,fit$cluster, color=T, shade=T, labels = 2, lines=1 )
warning(fit)


#5. mlbench 패키지에서 제공하는 Soybstd5. mlbench 패키지에서 제공하는 Soybean 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.
library(mlbench)
data(Soybean)
head(Soybean)
dim(Soybean)
class(Soybean)
str(Soybean)

#  Soybean 데이터셋에는 결측값이 포함되어 있으므로 결측값을 제거한다.
ds.new <- Soybean[complete.cases(Soybean),]
dim(ds.new) #562  36


# Soybean 데이터셋에서 첫 번째에 있는 Class 열이 그룹 정보이다.
## 답안지

# Soybean 데이터셋에서 짝수 번째 데이터(관측값)를 훈련용 데이터로 하고, 홀수 번째 데이터(관측값)를 테스트용 데이터로 한다.
# 2,4,6,...562
idx <- seq(1,nrow(ds.new),2) # 1 3 5 7 9 ... 홀수에 대한 인덱스를 구한다

# 학습문제(훈련용 데이터)
ds.train.question <- ds.new[-idx,2:36]
head(ds.train.question)

# 학습 답안지
ds.train.answer <- ds.new[-idx,1]
head(ds.train.answer)


# 시험문제 ( 테스트용 데이터)
ds.test.question <- ds.new[idx,2:36]

# 시험 답안지
ds.test.answer <- ds.new[idx,1]

# k-최근접 이웃에서 k를 3, 5, 7로 다르게 하여 예측 정확도를 비교한다.
library(class)
pred<- knn(ds.train.question,ds.test.question,ds.train.answer,k=3)
pred

acc <- mean(pred==ds.test.answer)
acc

# 분석 보고서:k - 최근접 이웃에서 k가 3일 때 정확도는 0.8718861

pred<- knn(ds.train.question,ds.test.question,ds.train.answer,k=5)
pred

acc <- mean(pred==ds.test.answer)
acc

# 분석 보고서:k - 최근접 이웃에서 k가 5일 때 정확도는 0.8540925

pred<- knn(ds.train.question,ds.test.question,ds.train.answer,k=7)
pred

acc <- mean(pred==ds.test.answer)
acc

# 분석 보고서:k - 최근접 이웃에서 k가 7일 때 정확도는0.8398577

# 결론: k가 3일 때 가장 정확하게 분류할 수 잇다. 3명의 이웃이 가장 근접한 이웃이다.
#그래서 k=3인 알고리즘을 채택한다. 

#-------
# k-fold 교차검증 knn 예측을 높이기 위해서 데이터 셋을 골고루 뽑기
#
install.packages('cvTools')
library(cvTools)
k <- 10
folds<- cvFolds(nrow(iris),K=k) # 형식 cvFolds(관측수, 그룹수)
folds

acc <- c()
for( i in 1:k){
  ts.idx <- folds$which==1 # folds$which : 각 열에 인덱스 순열이 포함된 정수 행렬입니다.
  ds.train.question <- iris[-ts.idx,1:4] # 학습문제 훈련용 문제
  ds.train.answer <- iris[-ts.idx,5] # 학습문제 답안지 훈련용 답안지
  ds.test.question <- iris[ts.idx,1:4] # 시험문제 테스트용
  ds.test.answer <- iris[ts.idx,5] # 시험문제 답안지
  pred <- knn(ds.train.question,ds.test.question, ds.train.answer, k=5) # k=5 최근접 이웃수
  
  acc[i]<- mean(pred==ds.test.answer)
}

acc
mean(acc)

# k- 최근접 이웃 분류는 1번 분류한 것
#  k-fold는 k- 최근접 이웃 분류  여러번해서 분류한 것임 더 정확한 예측을 할 수 있따

#6. mlbench 패키지에서 제공하는 Glass 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

 Glass 데이터셋에서 마지막에 있는 Type 열이 그룹 정보이다.

 k-최근접 이웃에서 k는 3으로 한다.

 5-fold 교차 검증 방법으로 예측 정확도를 측정한다.





# 7. mlbench 패키지에서 제공하는 BreastCancer 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)
data("BreastCancer") # 데이터셋 불러오기
head(BreastCancer ) 
dim( BreastCancer )
class( BreastCancer )
str( BreastCancer )

#  BreastCancer 데이터셋에는 결측값이 포함되어 있으므로 결측값을 제거한다.
ds <- BreastCancer[ complete.cases( BreastCancer  ),  ]
head( ds )

#  BreastCancer 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.
ds.new <-  ds 
head( ds.new )
str( ds.new )
dim( ds.new )
#  k-최근접 이웃에서 k는 5로 한다.
#  10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
library( class )  # knn()
library( cvTools ) # cvFolds() 
folds <- cvFolds(  nrow( ds.new ), K=10 )
head( folds )
acc <- c() # 각 폴드에 대한 정확도를 담아둘 벡터 

head( ds.new )

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds.new[ -idx, 1:10 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds.new[ -idx,  11]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds.new[ idx, 1:10 ]
  # 시험용 답안지 
  ds.test.a <- ds.new[ idx,  11 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
mean(acc)  # 예측 정확도 0.7498082

8. mlbench 패키지에서 제공하는 PimaIndiansDiabetes 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)

data("PimaIndiansDiabetes") # 데이터셋 불러오기

# PimaIndiansDiabetes 데이터셋에서 마지막에 있는 diabetes 열이 그룹 정보이다.
# k-최근접 이웃에서 k는 5로 한다.
# 10-fold 교차 검증 방법으로 예측 정확도를 측정한다.

ds <- PimaIndiansDiabetes[complete.cases(PimaIndiansDiabetes),]
folds <-  cvFolds(nrow(ds),k=10)
acc <- c()

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds[ -idx, 1:8 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds[ -idx,  9]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds[ idx, 1:8 ]
  # 시험용 답안지 
  ds.test.a <- ds[ idx,  9 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}

acc

#9. mlbench 패키지에서 제공하는 Vehicle 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)

data("Vehicle") # 데이터셋 불러오기

# Vehicle 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.
# k-최근접 이웃에서 k는 3으로 한다.
# 10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
ds <- Vehicle[complete.cases(Vehicle),]
folds <- cvFolds(nrow(ds),K=10)
acc <- c()

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds[ -idx, 1:18 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds[ -idx,  19]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds[ idx, 1:18 ]
  # 시험용 답안지 
  ds.test.a <- ds[ idx,  19 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=3 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc

# 10. mlbench 패키지에서 제공하는 Vowel 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)

data("Vowel") # 데이터셋 불러오기
head( Vowel )
str( Vowel )
dim( Vowel)
class(Vowel)

# Vowel 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.
# k-최근접 이웃에서 k는 5로 한다.
# 10-fold 교차 검증 방법으로 예측 정확도를 측정한다.

ds <-Vowel[complete.cases(Vowel),]
folds <- cvFolds(nrow(ds),K = 10)
acc <- c()
for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds[ -idx, 1:10]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds[ -idx,  11]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds[ idx, 1:10 ]
  # 시험용 답안지 
  ds.test.a <- ds[ idx,  11 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
