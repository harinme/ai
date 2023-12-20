#요소 변환 수정(삽인, 삭제, 업데이트)하기
# flowers=["목련", "벛꽃",'장미','백일홍']
# print(flowers)
# flowers[1]= "무궁화" #수정
# print(flowers)
# #백일홍 수정하기 개나리로
# flowers[-1]="개나리"
# print(flowers)
# flowers.append("백일홍") # 리스트 맨 뒤에 붙여줌
# print(flowers)
# flowers.append("튤립")
# print(flowers)

# # 메소드 vs 함수  (동작시키기)
# # 메소드는 객체 안에서 동작을 시키는 것
# # 함수는 동작을 시키는 것

# #실무에서는 리스트 어떻게 쓸까?
# scores = [] #빈 리스트를 만듦 -> 추가로 작업하면서 넣기
# scores.append(100)
# scores.append(90)
# scores.append(85)
# scores.append(100)
# scores.append(98)
# print(scores)

# #특정 위치에 삽입하기
# fruits  = []
# while True :
#     fruit = input("좋아하는 과일은?")
#     if fruit=="끝" :
#         break
#     fruits.append(fruit)
# print(fruits)

# # [a b c] 특정 a b 사이에 삽입하고 싶다면
# fruits.insert(1,"자몽")
# print(fruits)

# 특정 요소 위치 찾기
# number =[5,20,13,7,8,22,7,17]
# print(number)
# idx=number.index(7,5) # 7이라는 값의 인덱스를 찾는데 인덱스가 5번째에 위치한 거 이후에 있는 7을 찾음
# print(idx)

# number =[5,20,13,7,8,22,7,17,8,9,8,1]
# print(number.index(8,9))

# flowers=["목련", "벚꽃",'장미', '벚꽃','백일홍','벚꽃']
# # 처음으로 나오는 벚꽃이 몇번째 인덱스에 있나요?
# print(flowers.index("벚꽃"))
# # 인덱스 번호 4 이후로 나오는 '벚꽃'은 몇 번째 인덱스에 있나요?
# print(flowers.index("벚꽃",4))

# #삭제하기 remove(삭제할 요소)
# flowers=["목련", "벚꽃",'장미', '벚꽃','백일홍','벚꽃'] # _이거 두개: __는 객체를 의미함.
# flowers.remove("목련")
# print(flowers)
# flowers.remove("벚꽃")# 다 지우는 게 아니라 맨 앞에 것만 지움
# print(flowers)
# # flowers.remore("개나리") # 개나리가 없는 값이라서 오류남

# x=flowers.pop(2) # pop을 통해 꺼내면 이후에 다시 넣지 않고 버림.
# print(x)
# print(flowers)

# flowers.clear() # 다지우는 것
# print(flowers)

# #197p

# data = list(range(1,21))
# print(data)
# for i in range(0, len(data),1):
#     print("%d" %data[i], end=" ")

print()

# data = list(range(1,21))
# for i in range(0, len(data),2):
#     print("%d" %data[i], end=" ")

for i in range(2,21,2):
    print(i, end=" ")



print()


data = list(range(1,21))
i=0
while i<len(data):
    print("%d" %data[i], end=" ")
    i+=2
    
x=-1
while x<18:
    x+=2
    print(x, end=" ")

print()

data = []

for x in range (10,21):
    data.append(x)

print(data)