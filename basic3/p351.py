# random 모듈 - 임의의 수

import random

r1= random.random() #0<= ㅁ <1 사이의 실수
print(r1)

r2= random.uniform(1,10) # 1 <=  ㅁ <10 사이의 실수
print(r2)

r3= random.randint(1,6) # 1<=ㅁ <= 6사이의 정수 
print(r3)

r4= random.choice([1,2,3,4,5])
r5 =random.choice((1,2,6,7)) 
r6= random.choice("I like python") 
print(r4,r5,r6) #안에 있는 거 랜덤하게 하나

    