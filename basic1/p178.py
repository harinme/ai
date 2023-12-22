# 178 4-6
# 10! = 1x2x3...x10

# for i in range (10):
#     print(i, end=" ")

# for i in range (1, 11):
#     print(i, end=" ")

# for i in "I love you":
#     print(i, end="")


# sum=0
# j=1
# while True :
#     if sum >= 50 :
#         break
#     else:
#         j +=1
#         sum +=j
# print (j, sum)


# fac=1
# for i in range (10, 0,-1):
#     fac *=i
# print(fac)

#179p 심화1
# count=0
# for i in range(1,1001):
#     if count==10:
#         print() # 줄 바꿈
#         count=0
#     if i%3!=0:
#         print(i, end=" ")
#         count+=1

# while문
# i=1
# count=0
# while i <=1000 :
#     if count==10:
#         print()
#         count=0
#     if i%3 !=0:
#         print(i, end=" ")
#         count +=1
#     i+=1

# con = "y"
# while con=="y":
#     x=int(input("성적을 입력하세요"))
#     if 100>=x>=90:
#         grade="수"
#     elif 90>x>=80:
#         grade="우"
#     elif 80>x>=70:
#         grade="미"
#     elif 70>x>=60:
#         grade="양"
#     else:
#         grade="가"
#     print(f"{grade}")
#     con=input("계속하시겠습니까? (중단:q / 계속:y)")

#4-3
x=True
star=int(input("시작 수를 입력해주세요."))
end=int(input("끝 수를 입력해주세요."))
for i in range (star,end+1):#시작 30 끝 80이면
    x=True
    for j in range(2, i): #2~29까지 나누어 본다.
        if i%j ==0:
            x=False
            break # 한 단계 반복문 밖으로 나감.
    if x :
        print(i, end=" ")