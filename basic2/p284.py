# r=0 # 전역변수
# def printSum(sList):
#     # r=0 #  지역변수
#     global r # 전역변수 r 이라는 뜻
#     r=0
#     for s in sList:
#         r+=s
#     return r

# sList=[1,3,5,6,2]
# print(printSum(sList))
# print(r)

# #288 연습문제
# #7-1
# def func():
#     x=200

# func()
# # print(x) x가 지역 함수이기 때문에 

# #7-2
# def func():
#     x=200
#     print(x)

# x=100
# func()
# print(x)

# #7-3
# def finc():
#     global x
#     x=200
#     print(x)

# x=100
# func()
# print(x)

#7-4
# def km(x):
#     mile=x*0.621371
#     return mile

# x=int(input("킬로미터를 입력하세요"))
# print("%d 킬로미터는 %.2f 마일이다."%(x,km(x)))

#7-5

# print("-선택 옵션", "1. 더하기" , "2. 빼기", "3. 곱하기","4. 나누기")
# c=int(input("원하는 연산을 선택하세요(1/2/3/4)"))
# x=int(input("첫번째 숫자를 입력하세요: "))
# y=int(input("두번째 숫자를 입력하세요: "))
# def func(x,y):
#     if c== 1:
#         m=x+y
#         print(f"{x}+{y}={m}")
#     elif c==2:
#         m=x-y
#         print(f"{x}-{y}={m}")
#     elif c==3:
#         m=x*y
#         print(f"{x}x{y}={m}")
#     else :
#         m=x/y
#         print(f"{x}÷{y}={m}")


# func(x,y)

# 7-6

# def func2(english,al):
#     count=0
#     for i in english:
#         if i==al:
#             count = count+1
    
#     return count

# english=input("영어 문장을 입력하세요: ")
# al=input("알파벳 하나를 입력하세요: ")
# k= func2(english,al)
# print(f"{english}에 포함된 {al}의 개수는 {k}개 이다.")

# #7-7

# def func3(x):
#     sum=0
#     for i in x:
#         sum=sum+i
#     return sum
# tup1=(10,20,30,40,50)
# sm=func3(tup1)
# print(f"튜플의 합계 : {sm}")

# #7-8
# def func6(st):
#     for i in range(len(st)-1,-1,-1):
#         print(st[i],end="")

# str=input("문자열을 입력하세요.")
# func6(str)    
# print()

# #7-9
# def func7(st):
#     st1=st.replace(" ","-")
#     return st1 

# string=input("문자열을 입력하세요: ")
# print(func7(string))

#7-10
def inchF(x):
    inch=x*0.393701 
    return inch

def poundF(y):
    pound=y*2.204623
    return pound

print("- 선택옵션")
print("1. 길이 환산(센티미터->인치)")
print("2. 무게 환산(킬로그램->파운드)")
option=int(input("원하는 환산 단위를 선택하세요(1/2) : "))
if option==1:
    q=int(input("센티미터 단위의 길이를 입력하세요: "))
    print("%d 센티미터 --> %.2f 인치"%(q,inchF(q)))
else :
    q=int(input("킬로그램 단위의 무게를 입력하세요: "))
    print("%d 킬로그램 --> %.2f 파운드"%(q,poundF(q)))
