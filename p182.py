# 182p 리스트 특징
#여러 자료들의 목록 형태로 관리하는 자료구조
#특징: 순서가 있다. 수정이 가능하다. 요소의 종류가 달라도 된다.

list1= [1, 1.1, "문자", [1,9],7,8]
print(list1[1:5:3]) #처음부터 0~ [0:2]0부터 1까지

list1 = [3, 15, -12.5, "사과", "딸기"]
print(list1)
print(type(list1)) ##type( ) 자료형 보기

## 리스트를 만드는 방법
# 방법 1) 변수 = [요소1, 요소2]
# 방법 2) list() 함수를 사용하기
list2= list(range(1,21,2)) #1부터 20까지 2씩 키워서 리스트 만들어라
print(list2)
print(type(list2))

list3=list("abcdef")
print(list3)
print(type(list3))

color=["빨강",'주황', '노랑','초록','파랑','남색','보라']
print(color[0])
print(color[5])
print(color[2:6])
print(color[-3])
print(color[-4:-1])
print(color)
print(color[3:])
print(color[:3])
list6=(color[1], color[-3], color[-2])
print(list6)
print(type(list6))

## 반복문과 리스트
for i in color:
#  변수     리스트
   # print(i,end=" ")
    print("나는 %s를(을) 좋아합니다."%i)


print(len(color)) # len(리스트) 리스트 요소의 개수를 구하는 함수