'''
age= int(input("당신의 나이는?"))
ticket= 2000

if age>=65 :
    ticket=0
    print(f"나이: {age}세")
    print(f"티켓 가격은 {ticket}원 입니다.")
else:
    print(f"나이: {age}세")
    print(f"티켓 가격은 {ticket}원 입니다.")
# --------------------------------------

birth= int(input("태어난 년도는 어떻게 되나요?"))
ticket= 2000
from datetime import datetime
year= datetime.today().year
age= int(year)-int(birth)

if age>=65 :
    ticket=0
    print(f"나이: {age}세")
    print(f"티켓 가격은 {ticket}원 입니다.")
else:
    print(f"나이: {age}세")
    print(f"티켓 가격은 {ticket}원 입니다.")
'''

birth= int(input("태어난 년도는 어떻게 되나요?"))
ticket= 2000
from datetime import datetime
year= datetime.today().year
age= int(year)-int(birth)

if int(birth)>int(year):
    print("올해 2023년 입니다. 입력이 잘못 되었네요.")
else:
    if age>=61 or age <=10 :
        ticket=0
    elif 40 <=age<=60 :
        ticket=1000
    elif 30 <=age<=39 :
        ticket=1500
    elif 10 <=age<=19 :
        ticket=2500

    print(f"나이: {age}세")
    print(f"티켓 가격은 {ticket}원 입니다.")
