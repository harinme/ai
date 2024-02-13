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

