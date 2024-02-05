
#(1) 데이터셋의 요약 정보를 보이시오. 
class(swiss)
#[1] "data.frame"

#(2) 남성의 농업인 비율(Agriculture)이 가장 높은 주를 보이시오. 
max(swiss$Agriculture)
rownames(subset(swiss,Agriculture ==max(swiss$Agriculture)))

#(3) 남성의 농업인 비율(Agriculture)을 내림차순으로 정렬하여 주의 이름과 함께 보이시오. 
swiss[order(swiss$Agriculture, decreasing=T),][2]

#(4) 카톨릭 신자의 비율(Catholic)이 80% 이상인 주들의 남성의 농업인 비율(Agriculture) 을 보이시오. 
subset(swiss,Catholic>=80)['Agriculture']

#(5) 징집대상자 중 입대시험에서 높은 평가를 받은 사람들의 비율(Examination)이 20% 미만이고 남성의 농업인 비율(Agriculture)이 50% 미만인 주의 이름과 Examination, Agriculture 컬럼의 값을 보이시오. 
subset(swiss, Examination <20 & Agriculture<50)[c('Examination','Agriculture')]


#(1) R에서 제공하는 state.x77 데이터셋에서 수입(Income)이 5,000 이상인 주의 데이터에서 수입(Income), 인구(Population), 면적(Area) 열의 값들만 추출하여 rich_state.csv 에 저장하시오. 
subset(state.x77[c('Income','Population', 'Area')], Income>=5000)

rich_state <- 

write.csv(rich_state, file="D:/AI/study/r_study/rich_state.csv")

#(2) (1)에서 만든 rich_state.csv 파일을 읽어서 ds 변수에 저장한 후 ds의 내용을 출력하시오. 
ds <- read.csv(file="D:/AI/study/r_study/rich_state.csv")
ds


#(1) 위와 같은 내용의 매트릭스 score를 생성하시오. 
m <- c(10,40,60,20)
f <- c(21,60,70,30)
score<- cbind(m,f)
score
#(2) score의 열 이름을 각각 male, female로 바꾸시오. 
colnames(score) <- c('male','female')

#(3) 2행에 있는 모든 값을 출력하시오. 
score[2,]

#(4) female의 모든 값을 출력하시오. 
score[,'female']

#(5) 3행 2열의 값을 출력하시오. 
score[3,2]


#(1) 이 데이터셋의 자료구조를 보이시오. 
class(mtcars)

#(2) 이 데이터셋의 행의 개수와 열의 개수를 보이시오. 
dim(mtcars)

#(3) 이 데이터셋 열들의 자료형을 보이시오. 
str(mtcars)

#(4) R 스튜디오의 도움말 기능을 이용하여 각 열이 어떤 데이터를 저장하고 있는지 설명하시오(예: mpg(mile per gallon), 자동차의 연비). 
#  옆에 help 창에돋보기 아이콘에다가 mtcars 입력

#(5) 연비(mpg)가 가장 좋은 자동차 모델을 보이시오. 
max(mtcars$mpg)

rownames(subset(mtcars,mpg==max(mtcars$mpg)))


#(6) gear가 4인 자동차 모델 중 연비가 가장 낮은 모델을 보이시오. 
subset(mtcars, gear==4)
mt <- subset(mtcars, gear==4)
rownames(subset(mt,mpg==min(mt$mpg)))


#(7) Honda Civic의 연비(mpg)와 gear 수를 보이시오. 
mtcars[ 'Honda Civic',c('mpg','gear')]

#(8) Pontiac Firebird 보다 연비가 좋은 자동차 모델을 모두 보이시오. 
mtcars['Pontiac Firebird','mpg']

rownames(subset(mtcars,mpg>mtcars['Pontiac Firebird','mpg']))

#(9) 자동차 모델들의 평균 연비를 보이시오. 
mean(mtcars$mpg)

#(10) gear의 수 종류를 보이시오. 
unique(mtcars$gear)

