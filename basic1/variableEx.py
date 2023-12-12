# 변수연습
_name="홍길동"
#변수를 만들때에는 밑줄
_Name1kk="다른 변수"
_name="이순신"
print(_name)
print(type (_name))
## type 함수는 자료형을 보여준다.
number=10
print (type(_name))

pi=3.14
ok= True
print (type(pi))
print(type(ok))
number="백점"
print(number)
print(type(number))
      ##사칙연산
      
str1="abc"
str2="def"
print(str1+str2) ##연속해서 출력해라
# print(str1-str2)안됨
# print(str1*str2)안됨
print(
      str1*3) #str1을 3번 반복해라
# print(str1 /3))

str3=str1+str2
print(str3)

number=1; number2=2; number3=3
number4= number+number2
number5= number2 * number3
number6= number2 **number3 #거듭제곱 ex. 2의 3제곱은 2**3
number7= number3 /number2
number8= number3 % number2 # % 나눈 값의 나머지
print (number,number2,number3,sep="--")
print(number4,number5,number6,sep="==")
print(number7,number8, sep="-->")


ok1 = True # 1
ok2 = False # 0
ok3 = ok1 + ok2 # or 연산 -> 1+0=1
ok4 = ok1 - ok2 # ?? 1-0=1
ok5 = ok1 * ok2 ## and 연산
# ok6 = ok1 / ok2
print(ok3,ok4,ok5, sep=">>")

#영어나 _은 괜찮은데 숫자는 안됨(변수명)/ 띄어쓰기 있으면 안됨


print(-26.35+8.7*(-21.0))
print(3/5)
a=1/3
print(a)
print("%.1f"%a)
# %.숫자f 소수점 숫자자리만큼 보여주세요

b=100//35 #// -> 나누기하고 소수점 아래를 삭제
print(b)

s="안녕하세요. 반갑습니다."
print(s[0])
print(s[3:10]) # 숫자:숫자 3< index number < 10에서 index numberf를 출력해줌. 3 이상 10 이전까지 보여줘
print(s[:6])

print(s[6:])

jumin= "061225-4098745"
#성별 추출하기 4
jumin[7:8]
#생일 추출하기 2006년 12월 25일
year=jumin[0:2]
month=jumin[2:4]
day=jumin[4:6]
print("20",year, "년",month, "월",day,"일",sep="")
print(len(jumin)) # len() 문자의 길이 구하기

a=100
# print(len(a)) 숫자에서는 len() 사용 못함

print("-"*100)
print("?"*5)
# print("문자"*숫자)-> 문자를 숫자만큼 출력함

a=100
b="abc"
c=(str)(a)+b
print(type(c))
print(c)
#str(a)-> a를 문자로 바꿔라!

a="100"
b="200"
c=(int)(a)+(int)(b)
print(type(c)) #type(c) c를 사칙연산하여라
print(c)
#int(a) a를 숫자로 바꿔라!

a="100"
b="200"
c=a+b
print(c)

##교재 66p