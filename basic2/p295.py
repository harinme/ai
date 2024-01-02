"""
x='A'
print(ord(x)) # ord(ㅁ)-> ㅁ의 아스키코드를 보여줌.

x=15
print(bin(x)) # bin(ㅁ)-> 안의 ㅁ을 2진수로 바꿔줌.
print(hex(x)) # hex(ㅁ)-> 안의 ㅁ을 16진수로 바꿔줌

x=round(7.25678) #round() -> 반올림
print(x)

x=max(10,9,-20) # max() 가장 큰 수 출력
print(x)

x=min([1,5,0,7]) # min() 가장 작은 수 출력 / 리스트
print(x)

x=max((10,8,7,20)) #튜플
print(x)

x=min({10,98,67,10}) # 세트
print(x)

x=min({1:"a", 0:"b", -1:"c"}) # 딕셔너리 -키의 제일 작은 수 출력
print(x)

x=min(['a','A','c'])
print(x) # 유니코드로 제일 작은 수 'A'가 출력됨.

# 소수 여부 판별하기
def is_prime(n):
    prime = True
    if n>1 :
        for i in range(2,n) :
            if n%i ==0:
                prime=False
                break
    return prime



number = int(input("수를 입력하세요"))
if is_prime(number) :
    print("소수이다")
else :
    print("소수가 아니다")


# 세제곱 합계 구하기
def square_sum(n):
    sm=0
    for i in range(1,n+1):
        sm=sm+i*i*i
    return sm

n = int(input("n의 값을 입력하세요."))
print(square_sum(n))

#c8-1
def square_sum(n):
    sm=0
    for i in range(1,n+1):
        if i % 2!=0:
            sm=sm+(i*i*i)
            print("%d*%d*%d"%(i,i,i), end="")
            
            if i==n:
                print("=", end="")
            else:
                print("+",end="")
    print(sm)
         

n = int(input("n의 값을 입력하세요."))
print(square_sum(n))

#회문을 구하기 - 알고리즘
def is_palindrome(s):
    for i in range(0,int(len(s)/2)):
        if(s[i]!=s[len(s)-1-i]):
            return False
    return True

string = "rotator"
if is_palindrome(string):
    print("회문")
else:
    print("회문 아님.")

# 문장 단어 반대로 하기
def reverse_sentence(sentence):
    words = sentence.split(" ")
    result =""
    for word in words:
        result = word + " " + result
    return result

sentence = "Nice to meet you"
print(reverse_sentence(sentence))

#
def check_word(s,w):
    if(s.find(w)==-1):
        print("존재하지 않는다.")
    else:
        print("존재한다")

string = "A good book is a great friend"
word = "friend"

# 테스팅 코드
# print(string.find("is")) # string 문자 열 안에 is가 12번째 인덱스에 있다
# print(string.find("as"))#  string 문자 열 안에 as가 없으면 -1을 리턴한다

check_word(string,word)


# 다수의 문자열 치환하기
# def replace_word(x,y,z):
#     if x.find(y) != -1:
#         k=x.replace(y,z)
#     return k

def replace_word(s,wl,w):
    arr=string.split(" ")
    new_str=[]
    for x in arr:
        if x in wl:
            new_str.append(w)
        else :
            new_str.append(x)
    #리스트를 문자열로 바꾸기 " ".join()
    new_str1=" ".join(new_str)
    return new_str1

string= "python java apple orange banana"
word_list = "apple orange banana"
word = "fruits"

new_str = replace_word(string,word_list,word)
print("치환된 문자열: "+ new_str)

# x in y -> x 안에  y 가 있는지 true false


def string_shift(string,d,direction):
    if direction == "left":
        left_part = string[d:]
        right_part = string[0:d]
    else :
        left_part = string[-d:]
        right_part=string[0:len(string)-d]
    result=left_part+right_part
    return result


string ="pythonprogramming"
str_left=string_shift(string,2,"left")
str_right=string_shift(string,3,"right")
print("좌측으로 2칸 이동"+str_left)
print("좌측으로 2칸 이동"+str_right)

#c8-4 문장의 단어 개수를 카운트하라
def count_word(s):
    arr = s.split(" ")
    return len(arr) # len(리스트) 리스트 안에 요소들의 개수를 반환함.

string = "I am a Student"
num_word= count_word(string)
print("단어의 개수: ", num_word)

#c8-5
def del_word(s,w):
    arr = s.split(" ")
    arr.remove(w)
    result = " ".join(arr)
    return result

string = "Don't cry before you are the hurt"
word="the"
new_str = del_word(string,word)
print("변경된 문자열", new_str) #문자열
"""

#선형 탐색, 순차 탐색, 앞에서 부터 차례대로 찾기, 정렬이 안된 자료 찾기
# 검색 횟수 최악인 경우 n회 만에 찾는다.

# 이진탐색, 이분탐색, 전제조건이 정렬이 되어야 한다.
#최악의 시간의 복잡도는 logN
def find_max(n):
    mx=n[0]
    for i in range(1,len(n)):
        if n[i]>mx:
            mx=n[i]
    return mx


data=[5,-3,12,8,2]
max_value=find_max(data)
print("선형 검색으로 최대값 찾기 ",max_value)

def binary_search(n,x):
    start=0
    end=len(n)-1 # 8
    while start <=end :
        mid = (start + end) //2 # 4 그냥 / 은 실수값으로 나오지만//로 하면 정수값으로 나옴
        if x == n[mid]:
            return mid
        elif x > n[mid]:
            start=mid+1 # 5
        else :
            end=mid-1
    return -1



data=[7,16,23,35,40,52,68,78,82]
search_num=16
index = binary_search(data,search_num)
print(index)

#322p e8-3
def sen_splite(s):
    ss=s.split("/")
    for sp in ss:
        print("%s:%d"%(sp,len(sp)))

sentence = "강아지/사슴/거북/고릴라/청개구리"
sen_splite(sentence)
