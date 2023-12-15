#간단 계산기 만들기
# a="y"
# while a =="Y" or a == "y":
#     print("기능 선택")
#     print("1. 더하기")
#     print("2. 빼기")
#     print("3. 곱하기")
#     print("4. 나누기")
#     print()

#     s=input("계산기 기능을 선택하세요. 1/2/3/4")
#     n=int(input("계산할 숫자의 갯수는?"))
#     if n==2 :
#         num1= int(input("첫번째 숫자를 입력하세요."))
#         num2= int(input("두번째 숫자를 입력하세요."))

#         if s == "1" :
#             print(f"{num1}+{num2}={num1+num2}")
#         elif s == "2" :
#             print(f"{num1}-{num2}={num1-num2}")
#         elif s == "3" :
#             print(f"{num1}x{num2}={num1*num2}")
#         elif s == "4" :
#             print(f"{num1}÷{num2}={num1/num2}")
#         else:
#             print("입력 숫자가 잘못되었습니다!")
#     elif n==3:
#         num1= int(input("첫번째 숫자를 입력하세요."))
#         num2= int(input("두번째 숫자를 입력하세요."))
#         num3= int(input("세번째 숫자를 입력하세요."))
#         if s == "1" :
#             print(f"{num1}+{num2}+{num3}={num1+num2+num3}")
#         elif s == "2" :
#             print(f"{num1}-{num2}-{num3}={num1-num2-num3}")
#         elif s == "3" :
#             print(f"{num1}x{num2}x{num3}={num1*num2*num3}")
#         elif s == "4" :
#             print(f"{num1}÷{num2}÷{num3}={num1/num2/num3}")
#         else:
#             print("입력 숫자가 잘못되었습니다!")
#     else:
#         print("죄송합니다. 지원하지 않는 기능입니다.")
#     a=input("계속 하시겠습니까? Y/N" )
# thanks=print("이용해주셔서 감사합니다.")

print("기능 선택")
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")
print()

s=input("계산기 기능을 선택하세요(1/2/3/4)")
count = int( input("계산할 숫자갯수는? ")) # 2
result = 0
first = "y"
number = 0
while  count > 0    :
    number = number + 1
    num1 = int(input(f"숫자{number}?"))
    count = count - 1 
    if first == "y" :
        first = "n"
        result = num1 
    else :    
        if s == "1" :
            result += num1
        elif s == "2" :
            result -= num1  
        elif s == "3" :
            result *= num1  
        elif s == "4" :
            result /= num1  
        else :
            print( "입력된 숫자가 잘못 되었습니다. ")
print( result )        
