for( i in 1:9){ # \n 줄 바꿈
  cat('2*',i,'=',2*i,'\n')
}

for(k in 2:9){
  for( i in 1:9){ 
    cat(k,'*',i,'=',k*i,'\n')
  }
}

class(iris)
head(iris)

norow <- nrow(iris)
mylabel <- c() # 빈 벡터 만들기

for(i in 1:norow){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i]>=5.1){
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
mylabel
newds <- data.frame(iris$Petal.Length,mylabel)
newds
head(newds)
table(newds$mylabel)


#(1) 1~100 사이의 정수 중 3의 배수들의 합과 개수를 구하시오. 
score <- c()
for ( i in 1:100){
  if( i %% 3==0){
    score[i] <- c(i)
  } else{
    score[i] <- c(0)
  }
}

sum(score)
count <-0
for (i in 1:100){
  if (score[i]!=0){
    count <- count+1
  }
}
count

# sum <- 0
# cnt <- 0
# for(i in 1:100){
#   if(i%%3==0){
#     sum <- sum+i
#     cnt <- cnt+1
#   }
# }
# sum
# cnt

#(2) 101~200 사이의 숫자 중 3과 4의 공배수를 출력하시오. 
for(i in 101:200){
  if (i%%3==0&i%%4==0){
   cat( i,'\n')
  }
}

# cat 대신에 print[i]하면 [1] -- [2]-- 이렇게 출력됨.

#(3) 24의 약수를 출력하시오. 
for (i in 1:24){
  if(24%%i==0){
    cat(i,'\n')
  }
}
# cat 대신에 print[i]하면 [1] -- [2]-- 이렇게 출력됨.

#(4) 10!을 출력하시오.(단, factorial() 함수를 이용하지 않는다.) 
f10 <- 1
for (i in 1:10){
  f10 <- f10*i
}
f10

## 한번에 주석 달고 싶으면 ctrl+shift+c


# 2번 * 출력
for(i in 1:6){
  for (j in 1:i){
    cat('*')
  }
  cat('\n')
}

# 3
i <- 1
sum <- 0
while(i<=9){
  sum <- sum +i^2
  i <- i+1
}
sum

# 4
score <- 80
result <- ifelse(score>60,'Pass','Fail')
result

#5. 소수(prime number)는 1과 자기 자신 외에는 나누어 떨어지지 않는 수를 말한다. 
# 2~1000 사이의 소수를 출력하는 R 코드를 작성하시오

prime <- c()
for(i in 2:1000){
  for(j in 2:i){
    if(i%%j==0) 
      break
    }
    if(j==i)
      prime <- c(prime,i)

}
prime

# 6. 0, 1, 1, 2, 3, 5, 8, 13, 21...... 형태의 수열, 즉 첫 번째 항의 값은 0이고 두 번째 항의 
# 값은 1일 때 이후의 항들은 이전의 두 항을 더한 값으로 만들어지는 수열을 ‘피보나치 수열’이라고 한다. 
# 0에서부터 시작하여 40개의 피보나치 수열을 출력하는 R 코드를 작성하시오.

#  벡터 초기값 0,1 만들기
fibo <- c(0,1)
while(length(fibo)<=40){
  f.1 <- fibo[length(fibo)-1]
  f.2 <- fibo[length(fibo)]
  fibo <- c(fibo,f.1+f.2)
}
fibo

# apply 함수
apply(iris[,1:4],1,mean) # 1은 행 방향으로 계산
head(iris)
dim(iris)
apply(iris[,1:4],2,mean)# 2는 열 방향으로 계산

#(1) iris 데이터셋의 행별 합계를 출력하시오.
apply(iris[,-5],1,sum)


#(2) iris 데이터셋의 열별 최댓값을 출력하시오.
apply(iris[,-5],2,max)

# (1) mtcars 데이터셋의 열별 합계를 출력하시오.
apply(mtcars,2, sum)

# (2) mtcars 데이터셋의 열별 최댓값을 출력하시오.
apply(mtcars,2, max)

# (3) mtcars 데이터셋의 열별 표준편차를 출력하시오.
apply(mtcars,2, sd) #  sd=표준편차 / v=분산


# 사용자 정의 함수
mymax <- function(x,y){
  num.max <- x
  if(y>x){
    num.max <- y
  } 
  return(num.max)
}

mymax(10,15)

myfunc <- function(x,y){
  sum <- x+y
  mul <- x*y
  div <- x/y
  mod <- x%%y
  return(list(rsum=sum,rmul=mul,rdiv=div,rmod=mod))
}

result <- myfunc(20,10)
result$rsum
result$rmod

source('D:/AI/study/r_study/myfunc.r')

a <- myfu(100,50)
a$rsum
a$rmul

# which() 특정 값이 어느 위치에 있는지 출력
score <- c(76,84,69,50,95,60,82,71,88,84,69)
which(score==100)
which(score>=85)
which(score==69)

max(score)
which.max(score)
which.min(score)

idx <- which(score<=60)
score[idx] <- 61
score

idx2 <- which(score>=80)
idx2
score.high <- score[idx2]
score.high

idx3 <- which(iris$Petal.Length>=5.0)
idx3
iris.big <- iris[idx3,]
iris.big

idx4 <- which(iris[,1:4]>5.0,arr.ind = T)
idx4

head(iris)


# 9
lgm <- function(x,y){#10 8
  result <- 0
  for(i in 1:max(x,y)){
    if(x%%i==0 & y%%i==0){
      result <- i;
    }
  }
  return(result)
}

lgm(10,20)

# 10 문제

maxmin <- function(x){
  fmax <- max(x)
  fmin <- min(x)
  return(list(max=fmax,min=fmin))
}
v1 <- c(7,1,2,8,9) 

rv <- maxmin(v1)
rv$max
rv$min


weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)
# (1) mtcars 데이터셋에서 연비(mpg)가 가장 좋은 관측값(행)의 내용을 보이시오.
idx <- which.max(mtcars$mpg) 
mtcars[idx,]
# (2) mtcars 데이터셋에서 자동차 중량(wt)이 2~3 사이인 관측값(행)들의 내용을 보이시오.
idx2 <- which( mtcars$wt>=2 & mtcars$wt<=3) 
mtcars[ idx2, ]

# (3) mtcars 데이터셋에서 gear의 수가 3인 자동차 모델의 연비(mpg) 평균값을 구하시오.
idx3 <- which( mtcars$gear == 3) 
mean( mtcars[ idx3, 'mpg' ] )

# (4) mtcars 데이터셋에서 자동차 중량(wt)이 5 이상인 자동차 모델의 연비(mpg) 최댓값을 구하시오.
idx4 <- which( mtcars$wt >= 5)
max( mtcars[idx4, 'mpg'] )

