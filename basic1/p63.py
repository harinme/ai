# 문자열 반복 연산자
x="토끼"*10
print(x)

# 문자열 포맷팅
animal = "고양이"
age = 25
score = 12.55
x = "나는 %s를 좋아하는 %d살, 포인트 점수는 %.1f입니다" %(animal,age, score)
# %s는 문자열 %d 정수형 숫자 %f 실수형 숫자
print(x)



y="a"
x="%c"%y 
z="zvd"
# %c는 한 글자 / %s는 두글자 이상
print(x)
print(z)

y=15
x="%o"%y 
# %o는 8진수로 표시함(영어o)
print(x)

y=15
x="%x"%y 
# %x는 16진수로 표시함(영어o)
print(x)

#키보드 입력 Scanner sc = new Scanner(System.in); sc.nextInt();
#->> input()
"""
name = input("이름을 입력하세요")
print("%s 입니다"%name)
"""

"""
score = input("점수는")
print(type(score)) #-> str type()은 어떤 타입인지 알려줌
# print("%d 입니다" % score)
print("%d점 입니다." % (int(score)))
"""

"""
score = int(input("점수는"))
print(type(score)) #-> str type()은 어떤 타입인지 알려줌
# print("%d 입니다" % score)
print("%d점 입니다." % (score))
"""

"""
#실수 반지름 12.5789를 입력 받아서 원넓이(r*r*3.14)를 구하세요.
radius=(float)(input("반지름은?"))
area = radius *radius *3.14
print("%.3f 원넓이"%area)
"""

#74p
name="홍지영"
a=10
b=20
print(name, a, b, a-b, 100, sep="")

#76p 널(NULL)이란 값이 없는 것 " "->이것도 공백이 존재하므로 값이 존재함. 0이나 공백과는 다른 것임.

print("문자열에는 문자 앞 뒤에 쌍따옴표(\")를 붙인다")

name="삼성전자"
won=50000
score=10
print("%s 주식 %d주 총 평가금액은 %d원 입니다."%(name,score, won*score))

x= "값"
total="298조"
price="50000원"
per=15.79

print("항목", x )
print("시가총액", total)
print("현재가", price)
print("per", per)

h="Hello"
p="python"
print("%s! %s"%(h,p) )

a=123
print(type(a))

num_str="1234"
print(type(int(num_str)))

num_str="12.567"
z=float(num_str)
print(type(z))

year="2020"
z=str(num_str)
print(type(z))

price= 48960
z= 36
y= price*z
print("%d"%(y))

print("-"*100)
