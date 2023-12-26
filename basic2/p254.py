# 함수
# 용도: 역할을 담당하는 것
# 사용법: 만들기 -> 호출해서 사용

def hello(): #만들기
    print("Hi!")
def goodmoring(): #이건 사용자 정의 함수
    print("Good Morning") # print는 내장 함수

goodmoring()
hello() #호출
goodmoring()

# 함수의 종류
# 내장 함수 - 파이썬에 미리 만들어 둔 것
# 사용자 정의 함수 - 프로그래머가 만들어 주는 함수
# 안녕! 현희야, 안녕! 길동아, 안녕! 민수야

def hi( name): # (매개변수)
    print(f"안녕! {name}야(아)")

hi("현희") # 매개변수에 들어갈 값: 실인수 Arguments
hi("길동")
hi("민수")

#나는 현희야 키가 160이야, 나는 길동이야 키가 180이야 나는 민수야 키가 170이야.
def height(name, height):
    print(f"나는 {name}(이)야, 키는 {height}cm 이야")

height("현희",160)
height("길동",180)
height("민수",170)

# 263p 매개변수가 여러개인 경우(가변인 경우)
def average(*args):
    num_args=len(args) # 실인수의 갯수가 나온다.
    sum=0
    for i in args:
        sum=sum+i
    avg = sum / num_args
    print(f"평균은 {avg}")

average(85,96,87)
average(85,96,87,97,72)
average(5,78)


def printAll(*string):
    x=""
    for i in string:
        x=x+i
    print(x)

printAll("a", "b") # 출력은 ab
printAll("a", "b","c") # 출력은 abc
printAll("a", "b","c","d") # 출력은 abcd

def func(food): # fruits 리스트의 힙메모리의 주소
    # for x in food:
    #     print(x)
    food.append("귤")
    print(food)

fruits=["사과","오렌지","바나나","사과"] # 리스트: 수정이 된다.
func(fruits)

#튜플 - 리스트와 동일 수정이 안됨, 변경하면 안되는 것은 이곳에 저장하기

def tD(tDP):
    for i in tDP:
        print(i)
    # tDP.append("코스코")-> 튜플은 수정이 안되기 때문에 error
    # print(tDP)
tupledata = ("삼성","LG","세스코")
tD(tupledata)

def dicF(dicData):
    dicData[4]="d" # 4번이라는 키에 d라는 값을 넣겠다!
    print(dicData)

dicData = {1:"a",2:"b",3:"c"}
dicF(dicData)

def returnSum(n1,n2,n3):
    s= n1+n2+n3
    return s
ss=returnSum(10,20,30)
print(ss)

#반지름 10을 이용해서 원의 넓이를 구하는 함수를 만드시오.

def returnArea(r):
   return r * r * 3.14
circleArea = returnArea(10)
print(circleArea)