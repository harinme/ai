2+3
2^3
# 주석은 #
10&&3
10%%3
sqrt(125)
log(10)
log10(10, base =2)
log(10, base = 2)
sqrt(64)
max(10,5,234)

factorial(6)
factorial(3)
abs(-90)
sin(60)
pi = 3.14
# pi-> 변수 선언
sin(pi/2)
pi=1.07
sin(pi/2)
# 변수 선언 방법 1 '='
pi = 1214
# 변수 선언 방법 2 ' <-' 단축키 'alt' + '-'
pi <- 1214


name <- '홍길동'

25+99
16*25+186*5-67*22
1976/24
pi <- 3.14
pi*(10^2)
pi*(12^2)
pi*(15^2)
y <- log(sqrt(pi), 2)
pi <- 8
y(pi)
log(sqrt(8),2)
log(sqrt(12),2) 
log(sqrt(16),2)

vc.2 <- seq(100,200,by=2)
vc.2

# 벡터 1차원 배열 형식 벡터명 <-  c(요소1,요소2)

x <- c(1,2,3)

x

y <- c('a','b','c')
y

z <- c(TRUE, TRUE, FALSE, TRUE)
z

x <- c(1,3,'a','b')
# 모두 문자형으로 변형됨
x
z <- c('a',TRUE)
#모두 문자형으로 변형됨
z
c <- c(1,2,TRUE,FALSE)
# TRUE가 1로 바뀐다. FALSE는 0으로 바뀐다.
c

num <- c(1,2,3,4,5,6,7,8,9,10)
num
# 1~100까지 벡터로 만들기 (연속 숫자)
num1 <- 1:100
num1
num2 <- 200:500
num2
num3 <- c(100:200,400:500)
num3
# 1 3 5 7 9 ..99 까지 벡터 만들기 1~100까지 증가치 2인 벡터 만들기
# 도움말 help(함수명)
help(seq)
seq(from=1,to=100,by=2) #정식적인 형식
seq(1,100,2) # 약식

seq(from=99, to=1,by=-2)


# rep
help(rep)

rep('가',length.out=2)
rep(1:4,2)
rep(1:4, each=2)
rep(1:4, c(2,3,4,5))
rep(1:4, each = 2, length.out = 4)


# 100~200 사이의 짝수로 된 vc.2
vc.2 <- seq(100,200,by=2)
vc.2

vc.3 <- rep(TRUE,20)
vc.3

 # 벡터에 이름 지정하기
score <- c(90,85,70)
names(score) <- c('김수진','이영미','최진수') # 이름 넣어주기
names(score)
score
# 부분적으로 검색
score[1] #인덱스로 검색
score['이영미'] # 이름으로 검색
score[4]
score[2:3]
score[c('이영미','최진수')]

v1 <- c(1,5,7,8,9)
v1[2] <- 3
# 1,5번 인덱스 값 바꾸기
v1[c(1,5)] <- c(10,20)
v1

x <- 10:15
y <- 20:25
x+y
x*y
x1 <- 10:14
y1 <- 20:26
x1+y1
d <- 1:10
sum(d)
sum(2*d)
length(d)
mean(d)
max(d)
min(d)
sort(d)
sort(d,decreasing = TRUE)
help(sort)

d <- 1:9
d[d>5]
d[d<5]
d[d!=5]
# 5~8 그리고(&)
d[4<d & d<9 ]

#7
d <- 100:200
d
d[10]
sort(d,decreasing = TRUE)[1:10]
seq(101,200,2)
d[seq(2,100,2)]# d [d%%2==1]
d[seq(3,100,3)] # d[d%%3==0]
d.20 <- d[c(1:20)]
d.20
d.20[d.20!=d.20[5]] # d.20[-5]
d.20[d.20!=d.20[5]&d.20!=d[7]&d.20!=d[9]] # d.20[-c(5,7,9)]

# 8
absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent) <- c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC')
absent
absent['MAY']
absent[c('JUL','SEP')]
sum(absent[1:6])
mean(absent[7:12])

# 9
d1 <- 1:50
d2 <- 51:100
d1
d2
d1+d2

d2-d1
d1*d2
d2/d1

sum(d1)
sum(d2)
sum(d1+d2)
max(d2)
min(d2)
mean(d1)
mean(d2)
mean(d2)-mean(d1)
sort(d1,decreasing = TRUE)
d3 <- c(d1[1:10],d2[1:10])
d3

# 10
v1 <- 51:90
v1[v1<60]
length(v1[v1<70])
sum(v1[v1>65])
v1[v1>60&v1<73]
v1[v1<65|v1>80]
v1[v1%%7==3]
v1[v1%%7==0] <- 0
v1
sum(v1[seq(2,40,2)])
v1[c(seq(1,40,2)| v1[v1>80]) ]
v1[v1%%3==0&v1%%5==0]
v1[seq(2,40,2)]*2 # v1[v1%%2==0]*2
v1 <- v1[v1%%7!=0]
v1

# list

ds <- c(90,85,70,84)
my.info <- list(name="TOM", age=60, status=TRUE, score=ds)
my.info
my.info[1]
my.info[[1]]
my.info[2]
my.info[[2]]
my.info$name
my.info$age

# factor 범주형 자료(예 동서남북)저장 사용한다
bt <- c('A','B','B','O','AB') # Vector 만듬
bt.new<- factor(bt) # factor 만들기
bt.new
bt.new[1:3]
bt.new[-2] # 2번째 인덱스 값은 제외하기

levels(bt.new) # 변수에 저장된 값을 보기
as.integer(bt.new)
bt.new[6] <- 'A'
bt.new

nn <- c('동','서','남','북','북','북')
nn.new <- factor(nn)
levels(nn.new)
as.integer(nn.new)
nn.new[7] <- '동'
nn.new[8] <- 'North'
day <- c('Mon','Wed')
people <- list(name="Bill", age=20, gender='M', student=TRUE,day=day)
people['day']

a <- c('Korea', 'Japan', 'China', 'Korea', 'India', 'China', 'Korea')
# (1) 벡터 a를 팩터 f로 만드시오.
a.new <- factor(a)
# (2) 팩터 f의 값을 출력하시오.
a.new
#(3) 팩터 f의 4번째 값을 출력하시오.
a.new[4]
#(4) 팩터 f에 저장된 값의 종류를 출력하시오.
levels(a.new)
#(5) 팩터 f의 문자값을 숫자로 바꾸어 출력하시오.
as.integer(a.new)

a <- 4
b <- 5
c <- a+b
c


y <- 2*2+5*x+10
x <- 6 # 44
y
x <- 8 # 54
x <- 10 #64


val.a <- 10
val.b <- 20
sum.ab <- val.a +val.b
sum.ab