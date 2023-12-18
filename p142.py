# for 문, while문 (파이썬에서 반복문 사용하는 방법)
# for x in range (5) :
#  print(x) # 0~4(5-1)까지 반복해서 넣어줌
# for x in range (1,11) :
#   print(x) # 1~10 (11-1)까지 반복해서 넣어줌
# for x in range (1,11,2) :
#   print(x) # 1~10 (11-1)까지 2의 간격으로 넣으줌
# print('-'*10)
# for x in range ( 100, 4, -5):
#   print(x)


# # 문제
# # 시작수, 마지막 수, 증가수를 입력받아서 출력하기
# #3,100,2
# print('-'*20)
# start = int(input("시작수를 입력해주세요."))
# last = int(input("마지막수를 입력해주세요."))
# increase = int(input("증가수를 입력해주세요."))
# for x in range (start, last, increase):
#   print(x)
# print('-'*20)


# 1~100까지 합
# 변수 1,2,3,...100
#합계 변수 1, 1+2, 1+2+3, ... sum = sum =x
# sum=0
# sumsum=0
# for x in range(1,101):
#   sum = sum +x
#   sumsum=sumsum+sum
#   print(sum)
#   print(sumsum)


# #146p
# for x in range (10): # 0~9
#   print(x)
# for x in range (1,11): #1~10
#   print(x)
# for x in range (1,10,2): #1 3 5 7 9
#   print(x)
# for x in range (20,0,-2): # 20 18 16 ... 2
#   print(x)


# # 2024suseh 1월 1일 부터 2024년 1월 31일까지 출력하기
# for x in range (1,32):
#  print(2024, 1 , x, sep="/")


# # 1~100까지 합계 구하기 3000 넘어가면 멈추고 합계 출력하기
# sum=0
# for x in range (1,101):
#   sum += x
#   if sum > 3000:
#     break
# print(sum, x)


# 100~10000까지 5씩 증가해서 합계 구하기 5000이상이면 멈추고 합계찍기
# sum=0
# for x in range (100,10001,5):
#   sum +=x
#   if sum >=5000:
#     break
# print(sum, x)


# 문자열 for 문
# for x in "abcdefg" :
#   print(x) # 각 문자를 하나씩 출력해줌
# # 't' 몇개인지 세기
# count=0
# for x in "this is python" :
#   print(x)
#   if x== "t":
#     count= count +1
# print (count)


# 공백이 몇 개인가요?
# count=0
# for x in "this is python" :
#     if x== " ":
#         count+=1
# print (count)


# # s 이거나 i 인게 몇개인지?
# count=0
# for x in "this is python" :
#     if x== "s" or x=="i":
#         count +=1
# print (count)

# #이중 for 문 구구단 출력
# for x in range (1,10):
#  for y in range (1,10):
#     print(x,"x",y,"=",x*y, end= ", ")
#  print()

# for x in range (1,10):
#  for y in range (1,10):
#     print ("%2dx%2d=%2d" %(x,y,x*y), end= " ")
#  print()

# for x in range (1,10):
#     for y in range (1,10):
#         print ("%2dx%2d=%2d" %(x,y,y*x), end= " ")
#     print()
## 이중 for문은 1행(밖에 있는 for문), 2행 (안에 있는 for 문)으로 구성되어서 1행-1 > 2행(반복), 1행-2 > 2행 (반복) ...
 

 #156p
    # 1행 1번, 2행 2번, 3행 3 번
# for i in range(1,10):
#    for j in range(1, i+1) :
#      print("*", end="")
#      print()

 # for i in range(1,10):
#    for j in range(1, i+1) :
#      print("*"*i)
    #157p
# 행은 10번 열은 1행일 때 10열 2행일 때 9열 3행일때
# for i in range (10,0,-1):
#       print("*"*i)

# for i in range (1,11):
#     for j in range (i,11):
#         print("*"*i, end="")
#     print()


# for i in range (1,6):
#    for j in range (1,6-i):
#       print(" "*i,"*"*j, " "*i)


#152p

# print("-"*30)
# print(" 섭씨 화씨")
# print("-"*30)

# for c in range(-20,31,5):
#    f=c*9.0/5.0+32.0
#    print("%5d %6.1f" %(c,f))

# print("-"*30)


# #p154
# count=0
# for i in range( 200,800):
#    if i%5!=0:
#       print("%d"%i, end=" ")
#       count+=1
#       if count%10==0:
#         print()

# #155
# print ("-"*40)
# print(" cm  mm  m  inch")
# print ("-"*40)

# for cm in range (1,101):
#    mm=cm*10.0
#    m=cm*0.01
#    inch=cm*0.3937
#    print (f"{cm}cm  {mm}mm {m}m  {inch}inch")
# print ("-"*40)

# #158
# number=input("숫자를 입력하세요: ")
# total=0
# for a in number:
#     a= int(a)
#     if a%2 !=0:
#        total+=1
# print("홀수의 개수: %d개"% total)

# # 4-7
# for i in range(1,6): #행
#    for j in range(1,11):
#         print("*", end=" ")
#         print()
   
# #4-8


# for i in range(9,0,-1):
#     for j in range(1,i+1,1):
#         print(i, end=" ")
#     print()

# # while 문
#     #형식 while 조건문: 조건이 참이면 반복할 내용
#     # 조건이 거짓이면 수행할 내용

# # 1~100까지 합 구하기
# i=1
# sum=0
# while i <= 100 :
#    sum +=i
#    i+= 1
# print(sum)

# i=500
# sume=0
# #500~200R까지의 합 구하기
# while 200<= i<= 500:
#    sum+= i
#    i -=1
#    print(sum)

# #500~ 1000까미 7씩 증가하면서 합과 평균구하기
#    #평균을 구하려면 갯수를 구해야한,
# i=500
# sum=0
# count=0
# while i <=1000:
#    sum+=1
#    i=+7
#    count=+1
# print("갯수 %d"%count)
# print("합계 %d"%sum)
# print("평균 %2f" %(sum/count))

#1~50까지 출력하다가 합이 3000이 넘으면 멈추기

i=0
sum=0
while True:
   i=+1
   if i % 5 !=0 :
      continue
   if i ==101:
      break

print(i, end= " ")