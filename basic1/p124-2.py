#간단 계산기 만들기(두자리)
a="y"
while a =="Y" or a == "y":
    print("기능 선택")
    print("1. 더하기")
    print("2. 빼기")
    print("3. 곱하기")
    print("4. 나누기")
    print()

    s=input("계산기 기능을 선택하세요. 1/2/3/4")

    num1= int(input("첫번째 숫자를 입력하세요."))
    num2= int(input("두번째 숫자를 입력하세요."))

    if s == "1" :
        print(f"{num1}+{num2}={num1+num2}")
    elif s == "2" :
        print(f"{num1}-{num2}={num1-num2}")
    elif s == "3" :
        print(f"{num1}x{num2}={num1*num2}")
    elif s == "4" :
        print(f"{num1}÷{num2}={num1/num2}")
    else:
        print("입력 숫자가 잘못되었습니다!")
    a=input("계속 하시겠습니까? Y/N" )
q=print("이용해주셔서 감사합니다.")



#간단 계산기 만들기(세자리)
print("기능 선택")
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")
print()

a="y"
while a =="Y" or a == "y":
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
    if s == "1" :
        print(f"{num1}+{num2}+{num3}={num1+num2+num3}")
    elif s == "2" :
        print(f"{num1}-{num2}-{num3}={num1-num2-num3}")
    elif s == "3" :
        print(f"{num1}x{num2}x{num3}={num1*num2*num3}")
    elif s == "4" :
        print(f"{num1}÷{num2}÷{num3}={num1/num2/num3}")
    else:
        print("입력 숫자가 잘못되었습니다!")
    a=input("계속 하시겠습니까? Y/N" )
q=print("이용해주셔서 감사합니다.")