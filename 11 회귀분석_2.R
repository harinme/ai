# 다중선형 회귀 분석
install.packages('car')
library(car)
head( Prestige ) # 명성, 평판, census-통계조사
dim( Prestige )
class( Prestige )
str( Prestige )

# 문제 연봉 예측하기 ( 교육연수-education, 여성비율-women, 직군에 대한 평판도-prestige)
# 종속변수- 연봉-income,  
# 독립변수 - 교육연수-education, 여성비율-women, 직군에 대한 평판도-prestige

# 데이터셋은 1열~4열
newData <-  Prestige[ , 1:4 ]
head(newData)

# 산점도로 변수간의 관계 확인
plot( newData, col='blue')

# 회귀식 구하기  lm(종속변수~독립변수1 + 독립변수2 + 독립변수3, 데이터셋  )
model.1 <- lm(income~education + women + prestige, newData  )
model.1
# 회귀식 y = 177.2 X education + ( -50.9 ) X women + 141.4 X prestige + (-253.8)
# 해당 회귀식의 요약을 보면 
summary( model.1 )


# 다중선형 회귀모델에서 변수 선택하기
install.packages( 'MASS' )
library( MASS )
newData2 <-  Prestige[ , 1:4 ]
head( newData2 )
model.2 <- lm( income~women + prestige + education, newData2 )
model.3 <- stepAIC( model.2 ) # 독립변수 선택 진행

# 회귀식- 다른 모델을 만들어 줌 
# y =  ( -50.9 ) X women + 141.4 X prestige + (-253.8)
summary( model.3 ) # 0.6327 독립변수 2개 이용 
summary( model.1 ) # 0.6323 독립변수 3개 이용

# 2개 모델 만들었다. model.1와 model.3 중에서  model.3이 더 잘한 모델이다. 왜? 독립변수가 적도 설명력도 높으니깐

# 예측하기
newData2
# 문)  education 12.26 women 4.02 prestige 69.1일때 income예측하기
# model.1으로 예측하기
education <- 12.26; women <- 4.02; prestige <- 69.1
y1 = 177.2 * education + ( -50.9 ) * women + 141.4 * prestige + (-253.8)

# model.3으로 예측하기
y3 = ( -50.9 ) * women + 141.4 * prestige + (-253.8)

# 실제값은 25879
y1 # 예측값 11484.79
y3 # 예측값 9312.322

# 4. state.x77 데이터셋에 대해 다음의 문제를 해결하는 R 코드를 작성하시오.
# (1) 문맹률(Illiteracy)과 고등학교 졸업률(HS.Grad))로 1인당 소득(Income)을 예측하는 다중선형 회귀모델을 만드시오.
# 종속변수: imcome / 독립변수 : illiteracy, hs.grad
model.4 <- lm(Income~Illiteracy+HS.Grad, data=data.frame(state.x77))
model.4

# 회귀식 y=-52.64*Illiteracy +44.55 * HS.Gard + 2131.33
summary(model.4)
# 독립변수 중에서 기여도가 높은 변수는? hs.gard
# 유의 수준은 1.057e-05
# 모델의 설명력은? 0.3597
# 회귀식에서 독립변수를 hs.gard만 구하기
model.5 <- lm(Income~HS.Grad, data=data.frame(state.x77))
model.5
summary(model.5)

# (2) 다중선형 회귀모델을 이용하여 state.x77 데이터셋의 문맹률(Illiteracy)과 인구수(Population)로 1인당 소득(Income)을 예측하시오.


# (3) (2)에서 예측한 1인당 소득과 실제 state.x77 데이터셋의 1인당 소득(Income)이 얼마나 차이가 나는지 보이시오. (예측값, 실제값, 예측값-실제값을 나타낸다.)

# 5. mlbench 패키지의 BostonHousing 데이터셋은 보스턴 지역의 지역 정보 및 평균 
# 주택가격(medv) 정보가 저장되어 있다. 다른 변수들을 이용하여 medv를 예측하는 모델을 만드시오.
# (단 chas 변수는 모델을 만들 때 제외한다.)

library(mlbench)

data(BostonHousing) # 데이터셋 불러오기


# (1) 전체 변수를 이용하여 평균 주택가격(medv)을 예측하는 회귀모델을 만들고 회귀식을 나타내시오.
class(BostonHousing)
str(BostonHousing)
dim(BostonHousing)

ds <-  BostonHousing[ ,-4] # 데이터 셋 준비
head(ds)
lm(medv~. ,data=ds) # .은 종속 변수 제외한 모두 다 
model.5 <- lm(medv~. ,data=ds) # 회귀식 y=wx+b
model.5 # y= -0.113139078*crim + 0.047052458*zn + -17.366999394*nox + ... +36.891959797
summary(model.5)


# (2) 평균 주택가격(medv)을 예측하는 데 도움이 되는 변수들만 사용하여 예측하는 회귀모델을 만들고 회귀식을 나타내시오.
library(MASS)
model.5.1 <- stepAIC(model.5)
summary(model.5.1)
y= -0.114056*crim + 0.045742*zn -16.469153*nox + ..... + 36.620311

# (3) (1), (2)에서 만든 예측모델의 설명력(Adjusted R-squared)을 비교해 보시오.
summary(model.5) # 설명력 Adjusted R-squared:0.7291 0~1 사이의 값으로 클 수록 회귀모델이 현실을 잘 반영함.
summary(model.5.1) 


# 6. mtcars 6. mtc# 6. mtcars 데이터셋에서 다른 변수들을 이용하여 연비(mpg)를 예측하는 다중 회귀모델을 만드시오.
# (1) 전체 변수를 이용하여 연비(mpg)를 예측하는 회귀모델을 만들고 회귀식을 나타내시오.
head(mtcars)
class(mtcars)
str(mtcars)

# 종속변수: 연비(mpg), 독립변수: cyl~carb
# 회귀식 구하기
model.6 <- lm(mpg~., data = mtcars)
summary(model.6)

# y= -0.11144*cyl + 0.01334*disp + ......+12.30337


# (2) 연비(mpg)를 예측하는 데 도움이 되는 변수들만 사용하여 예측하는 회귀모델을 만들고 회귀식을 나타내시오.
model.6.1 <- stepAIC(model.6)
# 예측하는데 도움이 되는 변수들 : am,qsec,wt
summary(model.6.1)
y= -3.9165*wt + 1.2259*qsec + 2.9358*am + 9.6178

# (3) (1), (2)에서 만든 예측모델의 설명력(Adjusted R-squared)을 비교하시오.
summary(model.6) # Adjusted R-squared:  0.8066 
summary(model.6.1) # Adjusted R-squared:  0.8336 

# 결과 분석 보고서: 독립변수를 모두 사용한 model.6의 설명력은 0.8066이고,
# 불필요한 독립변수를 제거한 모델 model.6.1의 설명력은 0.8336이므로 model.6.1을 채택한다.

#---------------------------
# 로지스틱 회귀분석 glm()
# y값이 범주형인 것 분석하기 ( 범주형의 자료로 정수형으로 변환함. 월-1 화-2, 
# 동-1, 서-2, 남-3,북-4, setosa-1, vers-2 ...)
#----------------------

head(iris)
class(iris)
dim(iris)
str(iris)
iris.new <- iris
iris
# 범주형 자료를 숫자로 변환하기
iris.new$Species <- as.integer(iris$Species)
str(iris.new)
tail(iris.new)

# 회귀식을 구하기
# 종속변수 : Species 독립변수: Sepal.Length Sepal.Width Petal.Length Petal.Width

model.7 <- glm(Species~Sepal.Length+Sepal.Width +Petal.Length+ Petal.Width, data = iris.new)
model.7 <- glm(Species~. , data = iris.new)
summary(model.7)

# 회귀식으로 써보기
y= 0.22865 * Petal.Length + 0.60925 * Petal.Width + 1.18650
y # 1.62846

tail(iris.new)
Petal.Length <- 4.0
Petal.Width <- 2.5
y= 0.22865 * Petal.Length + 0.60925 * Petal.Width + 1.186
y # 3.449265
summary(model.7)

# predict() 함수로 품종을 예측하기
unknown<- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2))) # 예측하고 싶은 독립변수의값을 넣기
unknown
names(unknown)<- names(iris)[1:4]
pred<- predict(model.7, unknown)
pred # 0.9174506

# 7. UCLA 대학원의 입학 데이터를 불러와서 mydata에 저장한 후 다음 물음에 답하시오. 
# 
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
mydata 
head(mydata)
class( mydata )
str( mydata)
dim( mydata )
# (1) gre, gpa, rank를 이용해 합격 여부(admit)를 예측하는 로지스틱 모델을 만드시오(0: 불합격, 1:합격).
# 독립변수 gre, gpa, rank, 종속변수 admit
# 회귀식 (회귀 모델)
model.admit <- glm( admit~gre + gpa + rank, data=mydata ) 
summary( model.admit )


# (2) mydata에서 합격 여부(admit)를 제외한 데이터를 예측 대상 데이터로 하여 (1)에서 만든 모델에 입력하여 합격 여부를 예측하고 실제값과 예측값을 나타내시오.
head( mydata )
# 예측값에 넣을 값 만들기
pred.val <- data.frame( mydata[ , 2:4] )
head( pred.val )
# predict() 예측값 구하기
pre <- predict(  model.admit,  pred.val ) # predict( 회귀모델명, 예측하려는값이 들어 있는 데이터셋)
pre
length( pre )
head( pre ) # 모델로 예측값 구한 것 
pre <- round( pre, 0 )
head( pre ) # 0 0 1 0 0 0
tail( pre ) # 0   0   0   0   0   0 
# 실제값은
head( mydata$admit ) # 0 1 1 1 0 1
tail( mydata$admit ) # 1 0 0 0 0 0

result <- data.frame(  예측값=pre, 실제값 = mydata$admit, 오차= pre - mydata$admit )
result
# 맞게 예측한 것의 갯수?
sum( result$예측값 == result$실제값)
# 틀리게 예측한 것의 갯수?
sum( result$예측값 != result$실제값)

# (3) 만들어진 모델의 예측 정확도를 나타내시오.
acc <- mean( result$예측값 == result$실제값)
acc

# 8. mlbench 패키지의 PimaIndiansDiabetes 데이터셋은 17개의 변수로 당뇨 여부(diabetes)를 예측하기 위한 정보를 담고 있다. 17개의 변수들을 이용하여 당뇨 여부(diabetes)를 예측하는 로지스틱 회귀모델을 만드시오.
# 
library(mlbench)
data(PimaIndiansDiabetes) # 데이터셋 불러오기
head( PimaIndiansDiabetes ) 
str( PimaIndiansDiabetes )
dim( PimaIndiansDiabetes )

# (1) set.seed(100)을 실행한 후 전체 데이터(관측값)에서 임의로 60%를 추출하여 train에 저장하고 나머지 40%는 test에 저장하시오.
# 1단계 diabetes변수의 자료(범주형)를 숫자로 바꾸기 
ds <- PimaIndiansDiabetes
ds$diabetes <- as.integer(ds$diabetes) # pos(양성) 2,  neg(음성) 1
head( ds )
# 2단계 임의로 60%를 추출
set.seed(100)
train.idx <- sample( 1:nrow(ds), nrow(ds)*0.6  ) # 768개중에서 460개를 행의 번호(인덱스)뽑음 
head( train.idx )

train <- ds[ train.idx,    ]
head( train )

test <-  ds[ -train.idx,  ]
head( test )

# (2) train의 데이터로 당뇨여부(diabetes)를 예측하는 로지스틱 회귀모델을 만들고 회귀식을 나타내시오.(당뇨여부(diabetes) 변수는 팩터 타입이므로 정수로 바꾸어야 모델을 만들 수 있다.)

## 로지스틱 회귀모델을 만들기
model.dia <- glm( diabetes~. ,  data=train   ) 
summary( model.dia )
##  회귀식을 만들기
y = 0.0211082 * pregnant + 0.0065026 * glucose -0.0023262 * pressure +  0.0123455 * mass + 0.1599404 * pedigree + 0.1158979

# (3) 회귀모델에 대해 test의 데이터를 입력하여 당뇨여부(diabetes)를 예측하시오.
class( test )
pred <- predict(  model.dia, test  )
head( pred )
head( ds )
pred <- round( pred, 0 )
head( pred )
ds[1:20, ]

# (4) 예측한 값과 실제 당뇨여부를 비교하여 모델의 정확도(accuracy)가 어느 정도인지 확인하시오.
acc <- mean( pred == test$diabetes ) 
acc # 0.775974 정확도가 있다
# 보고서 : 모델은 75.59%의 정확도로 예측할 수 있다

# 9. mlbench 패키지의 Glass 데이터셋은 9개의 변수로 잔디의 종류(Type)를 예측하기 위한 정보를 담고 있다. 9개의 변수들을 이용하여 잔디의 종류(Type)를 예측하는 로지스틱 회귀모델을 만드시오.
# 
library(mlbench)

data(Glass) # 데이터셋 불러오기
# 
# (1) set.seed(100)을 실행한 후 전체 데이터(관측값)에서 임의로 60%를 추출하여 train에 저장하고 나머지 40%는 test에 저장하시오.
# 
# (2) train의 데이터로 잔디의 종류(Type)를 예측하는 로지스틱 회귀모델을 만들고 회귀식을 나타내시오.(잔디의 종류(Type) 변수는 팩터 타입이므로 정수로 바꾸어야 모델을 만들 수 있다.)
# 
# (3) 회귀모델에 대해 test의 데이터를 입력하여 잔디의 종류(Type)를 예측하시오.
# 
# (4) 예측한 값과 실제 잔디의 종류를 비교하여 모델의 정확도(accuracy)가 어느 정도인지 확인하시오.

