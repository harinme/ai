"""
kor = input("국어 성적을 입력하세요: ")
#국어 성적을 입력하세요: 85
eng = input("영어 성적을 입력하세요: ")
#영어 성적을 입력하세요: 87
math = input("수학 성적을 입력하세요: ")
#수학 성적을 입력하세요: 99
sum =int(kor) + int(eng) + int(math)
avg = sum /3
print("합계:%d ,  평균: %.2f"%(sum,avg))


#81p
price = 3000
num=3
pay=10000
change=pay-price*num
print("거스름돈: %d"%change)
print(f"거스름돈: {change}")

#83p 탄생년-> 나이 계산

## from datetime import datetime -> 날짜를 가지고 오기 위한 함수
## datetime.today().--- -> ---에 year을 넣으면 올해 년도를 가지로 옴

from datetime import datetime
name=(input("당신의 이름을 입력하세요. :"))
birth=int(input("당신이 태어난 년도를 입력하세요. :"))
age=datetime.today().year-birth
print(f"{name}의 나이는 {age}세 입니다.")

##86p
# year=input("년은?")
# month=input("월은?")
# day=input("일은?")

from datetime import datetime
year= datetime.today().year
month= datetime.today().month
day= datetime.today().day

print(year,month,day, sep=".")

## 오늘 요일 구하기 ->숫자로 구해짐
# 월요일 0 화요일 1 수요일 2 ... 일요일 6
# 출력화면 2 수요일이 나오게 하기
from datetime import datetime
weekday=datetime.today().weekday()
if weekday == 0 : 
    weekdayHan = "월요일"
elif weekday == 1 : 
    weekdayHan = "화요일"
elif weekday == 2 : 
    weekdayHan = "수요일"
elif weekday == 3 : 
    weekdayHan = "목요일"
elif weekday == 4 : 
    weekdayHan = "금요일"
elif weekday == 5 : 
    weekdayHan = "토요일"
elif weekday == 6 : 
    weekdayHan = "일요일"
print(f"{weekdayHan}")
"""

# 87p
width=10
height=20
length = width*2 + height *2 # 사각형 둘레
area= width*height # 사각형 넓이
print(f"사각형의 둘레: {length}")
print(f"사각형의 넓이: {area}")


# 만약에 사각형의 넓이가 100이 넘으면 큰 사각형이네요
# 아니면 작은 사각형이네요 라고 출력하기
if area > 100:
    print("큰 사각형이네요")
else :print("작은 사각형이네요")

# 넓이가 100<+ 넓이 <= 300 큰 사각형
# 50 <= 넓이 <=99 중간 사각형
# 0<= 넓이 <= 49 작은 사각형

if 200 <=area <= 300 :
    print("큰 사각형이네요.")
elif 50<= area <=99 :
  print("중간 사각형이네요.")
else :
   print("작은 사각형이네요")