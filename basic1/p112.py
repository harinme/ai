# month=int(input("월을 숫자로 입력하세요: "))
# if 0>month or month>12:
#     print("잘못 입력하셨습니다. 숫자를 확인해주세요.")
# else:
#     if month == 3 or month ==4 or month ==5:
#         print(f"{month}월은 봄입니다.")
#     elif month == 6 or month ==7 or month ==8:
#         print(f"{month}월은 여름입니다.")
#     elif month == 9 or month ==10 or month ==11:
#         print(f"{month}월은 가을입니다.")
#     elif month == 12 or month ==1 or month ==2:
#         print(f"{month}월은 여름입니다.")


# #p.113
# a= int(input("주민번호 뒷자리 첫 번재 숫자를 입력해 주세요: "))       
# if a ==1 or a==3:
#     print("남성입니다.")
# elif a==2 or a==4:
#     print("여성입니다!")
# else:
#     print("잘못 입력하셨습니다. 숫자를 확인해주세요.")

#p.118
# char=input("영문 대문자 또는 소문자 하나를 입력하세요: ")
# char2=char.upper()
# if char2 == "A" or char2=="E" or char2 == "I" or char2 == "O" or char2 == "U" or char2 == "Y":
#     print(f"{char2}는 모음입니다.")
# else :
#     print(f"{char2}는 자음입니다.")

#p.119

height= int(input("키는?"))
weight= int(input("몸무게는?"))

s=(height-100)*0.9

print("="*50)
print("키:", height)
print("몸무게:", weight)

if s<weight:
    print("건강을 위해 다이어트가 필요합니다!")
else:
    print("표준 또는 마른 체형입니다!")

#p.121
print("아르바이트 급여 계산 프로그램")
print("※ 시급")
print("-주간 근무 : 9,500원")
print("-야간 근무: 주간 시급 * 1.5")
print()

hour_pay=9500
a=int(input("1(주간 근무) 또는 2(야간근무)를 입력해주세요"))
work_time=int(input("근무 시간을 입력해주세요: "))

if a==1:
    day_night="주간"
    pay=hour_pay*work_time
else:
    day_night="야간"
    pay=hour_pay*work_time*1.5

print("%d시간 동안 일한 %s 급여는 %d원 입니다. "%(a,day_night,pay))