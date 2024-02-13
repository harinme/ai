# 단순선형 회귀 분석
# 문제 주행속도와 제동거리 사이의 회귀식 구하기

head(cars)
class(cars)
str(cars)
dim(cats)

# plot(종속변수~독립변수, data=데이터셋 이름)
plot(dist~speed, data = cars)
# 산점도에서 선형관계가 분명하다.
# 주행속도가 증가할수록 제동거리도 증가한다.


# 회귀모델 구하는 함수 lm(종속변수~독립변수, 데이터셋)
# 회기식은 y=Wx+b
mod1 <- lm(dist~speed,cars)
mod1
coef(mod1)[1] # intercept 값이 b이다.
coef(mod1)[2] # speed 3.932402 값이 W이다.

# 그래서 y= 3.932402 x speed - 17.579095 회기식이 구해진다.

# 문 속도가 30 일 때 제동거리는?
y <- 3.932402 *30 - 17.579095
y
# 문 속도가 50일 때 제동거리는?
y <- 3.932402 *50 - 17.579095
y
# 문 속도가 70일 때 제동거리는?
y <- 3.932402 *70 - 17.579095
y

# 오차 꼭 있다. 인정하기
# 예상 제동거리, 실제 제동거리, 오차구하기
head(cars)
speed <- cars[,1]
speed
b <- coef(mod1)[1] 
w <- coef(mod1)[2]
pred <- w*speed+b # 예상 제동거리(회귀식에 의한 제동거리)
pred

# 예상 제동거리, 실제 제동거리, 오차 구하기를 데이터프레임으로 만들기
compare <- data.frame(pred,cars[,2],pred -cars[,2])
compare

colnames(compare) <- c('예상제동거리','실제제동거리','오차')
compare

# 1. Loblolly 데이터셋에서 age를 이용해 height를 예측하는 단순선형 회귀모델을 만드시오. 
#그리고 age가 10, 15, 20일 때 height를 예측하여 보시오.
head(Loblolly)
dim(Loblolly)
str(Loblolly)

# 종속변수는(y값)? height, 독립변수(x)는? age
# 1단계 회기식이 가능한지 산점도를 그려서 확인하기
plot(height~age, data=Loblolly, col='blue')

# 산점도에 대한 결과 분석: 선형 관계가 분명하다

# 2단계 회기식을 구하기 y=Wx +b
model.2 <- lm(height~age, Loblolly)
model.2
# 결과 회귀식 y= 2.591 x age + (-1.312)
W <- coef(model.2)[2]
b <- coef(model.2)[1]

# 3 단계 age가 10,15,20 일때 height를 예측하기
age <- 10
y.10 <- W*age+b
y.10

age <- 15
y.15 <- W*age+b
y.15

age <- 20
y.20 <- W*age+b
y.20

# 2. airquality 데이터셋에서 Wind로 Temp를 예측하는 단순선형 회귀모델을 만드시오.
# 그리고 Wind가 10, 15, 20일 때, Temp를 예측하여 보시오

head(airquality)
plot(Temp~Wind, data = airquality)

model.3 <- lm(Temp~Wind, airquality)
model.3
