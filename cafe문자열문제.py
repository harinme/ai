
letters="java programming"
print(letters[5],letters[1],letters[-1])
##뒤에서 앞으로 셀 때는 -1, -2 이렇게 하면 됨

number="43다 6521"
print(number[3:8])

string="홀짝홀짝홀짝홀짝"
print(string[1],string[3],string[5],string[7], sep="")
print(string[1:8:2]) # string[시작 인덱스:종료인덱스:증가인덱스]
print(string[0:8:2])


string="PYTHON"
print(string[5], string[4], string[3], string[2], string[1], string[0], sep="")
print(string[::-1]) #[::]-> 시작 생략하면 0 종료 인덱스를 생략하면 마지막 :증가 인덱스 -숫자(반대로)

# "Y"->"K"
# string[1]="K" 안된다. 문자열은 일부분을 수정할 수 없다.
string="PYTHON"
string=string.replace("Y","K") # ----.replace(" A "," B ") >> ----안에 있는 A를 B로 바꾼다
print(string)


phone_number="010-888-9999"
pn=phone_number
print(pn[0:3],pn[4:7],pn[8:12])

phone_number="010-888-9999"
pn=phone_number
print(pn[0:3],pn[4:7],pn[8:12], sep="")
print(pn.replace('-',' '))

url="http://gmail.com"
print(url[13:])
url=url.split(".")
print(url[1])
# ----.split(".")-> .을 기준으로 갈라놓음.

url="http://www.naver.com"
url=url.split(".")
print(url[1])

lang="java python"
#lang[0]="k" #문자열은 부분적으로 수정이 안됨
lang=lang.replace("j","k")
print(lang)

string = "abcdefABCDEFabc"
string = string.replace("c", "!")
print(string)

string = "abcdefABCDEFabc"
print( string.replace("c", "!") )
print(string)

a="123"
b="456"
print(a+b)

x="Hi!"
print(x*5)

z="+"
print(z*150)

s1="python"
s2="c++"
s3="java"

s=s1+' '+s2+' '+s3
print(s*6)

# '%s'는 문자열 데이터 타입 '%d' 정수형 데이터타입 '%f' 실수형 데이터 타입
name1 = "홍길동"
age1 = 25
eyesight1 = 1.2
name2 = "이순신"
age2= 13
eyesight2 = 0.8

print("이름: %s 나이: %d 시력: %.1f" %(name1,age1,eyesight1))
print("이름: %s 나이: %d 시력: %.1f" %(name2,age2,eyesight2))
# format()-> { } 이거로 두고 .format()에서 ()에 넣을 값을 적기
print("이름: {} 나이: {} 시력: {}".format(name1,age1,eyesight1))
print("이름: {} 나이: {} 시력: {}".format(name2,age2,eyesight2))

# 파이썬 3.6부터 f-string을 이용(일반적으로 많이 사용)
print(f"이름: {name1} 나이: {age1} 시력: {eyesight1}")
print(f"이름: {name2} 나이: {age2} 시력: {eyesight2}")

price="5,896,124,650" #문자열로 바꾸는 것은 int
price=price.replace(",","")
print(price)
price=int(price)
print(type(price))
print(price+100)

date = '2024/01(E) 1사분기'
date=date[0:7]
print(date)

date = '2024/01(E) 1사분기'
date=date.split("(")
print(date[0])


data = "      공백제거하기   "
data=data.replace(" ","")
print(data)

# ---.strip() ->공백제거하는 함수
data = "      공백제거하기   "
data=data.strip()
print(f"공백 제거한 값은 {data}")

lowerWord ='python is very good'
lowerWord=lowerWord.upper()
print(lowerWord)
# ----.upper() 문자열을 대문자로

upperWord = 'PYTHON IS VERY GOOD'
print(upperWord.lower())
# ----.lower() 문자열을 소문자로

capitalizeWord = 'python quiz'
print(capitalizeWord.capitalize())
# ----.capitalize() 문자열의 첫글자만 대문자로

fileName="abc.csv"
print(fileName.endswith("csv"))
# endswith 이 문자의 끝의 파일이 뭐로 끝나는지 찾는것

if fileName.endswith("csv"):
    print("엑셀파일입니다.")
    print (fileName.endswith('csv'or'xlsx'))