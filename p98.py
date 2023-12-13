#98
x=10
y=-5
if x >=0 or y >=0 :
    print("양수")
    print( f"{x} {y}")    
    # and 둘 다 참이어야 함
    # or 둘 중 하나만 참이면 되미
    # not 참이면 거짓

xx=10
print(xx%2==0 or xx %3 == 0)

a=5
b=7
c=a+b
c==12 # 컴퓨터에서 = 1개는 뒤에 있는 걸 계산해서 앞의 변수에 넣는 것
# 컴퓨터에서 = 2개는 앞과 뒤가 같은지 물어보는 것

hobby1="영화감상"
hobby2="수영"
my_hobby='독서'
print(my_hobby==hobby1 or my_hobby ==hobby2)

pilgi=90
silgi=70
if pilgi>=80 and silgi>=80:
    print("합격")
else:
    print('불합격')

# 월 입력받아서 1~3월이면 1사분기 4~6 2사분기 7~9월 3사분기 10~12월 4사분기

month=input("월을 입력하세요.")
if int(month) <= 0 or int(month) > 13 :
  print("오류가 발생했습니다. 확인해주세요.")
elif 1 <= int(month) <=3:
    print("1사분기")
elif 4 <= int(month) <=6:
  print("2사분기")
elif 7 <= int(month) <=9:
  print("3사분기")
elif 10 <= int(month) <=12:
  print("3사분기")
