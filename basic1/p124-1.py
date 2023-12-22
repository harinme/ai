#간단 계산기 만들기
# print("기능 선택")
# print("1. 더하기")
# print("2. 빼기")
# print("3. 곱하기")
# print("4. 나누기")
# print()

# s=input("계산기 기능을 선택하세요. 1/2/3/4")

# num1= int(input("첫번째 숫자를 입력하세요."))
# num2= int(input("두번째 숫자를 입력하세요."))
# num3= int(input("세번째 숫자를 입력하세요."))

# if s == "1" :
#     print(f"{num1}+{num2}+{num3}={num1+num2+num3}")
# elif s == "2" :
#     print(f"{num1}-{num2}-{num3}={num1-num2-num3}")
# elif s == "3" :
#     print(f"{num1}x{num2}x{num3}={num1*num2*num3}")
# elif s == "4" :
#     print(f"{num1}÷{num2}÷{num3}={num1/num2/num3}")
# else:
#     print("입력 숫자가 잘못되었습니다!")

#############
print("기능 선택")
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")
print()

s=input("계산기 기능을 선택하세요. 1/2/3/4")

num1= int(input("첫번째 숫자를 입력하세요."))
num2= int(input("두번째 숫자를 입력하세요."))
num3= int(input("세번째 숫자를 입력하세요."))
num4=num1+num2
if s == "1" :
    num4=num1+num2
elif s == "2" :
    num4=num1-num2
elif s == "3" :
    num4=num1*num2
elif s == "4" :
    num4=num1/num2
else:
    print("입력 숫자가 잘못되었습니다!")

s=input("계산기 기능을 선택하세요. 1/2/3/4")
if s == "1" :
    print(f"{num4}+{num3}={num4+num3}")
elif s == "2" :
    print(f"{num4}-{num3}={num4-num3}")
elif s == "3" :
    print(f"{num4}x{num3}={num4*num3}")
elif s == "4" :
    print(f"{num4}÷{num3}={num4/num3}")
else:
    print("입력 숫자가 잘못되었습니다!")