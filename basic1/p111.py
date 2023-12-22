# start = int(input("시작수는?"))
# end=int(input("끝 수는?"))
# num=int(input("정수를 입력하세요"))

# result = f"{num}은(는) {start}~{end} 사이에 없습니다."

# if  num >= start and num <= end :
#     result = f"{num}은(는) {start}~{end} 사이에 있습니다."

# print(result)

# 난수 (규칙이 없는 수)를 구하기
import random
"""
print (random.random()) # 0 <= r < 1
print (random.randrange(1,7)) # random.randrange(x,y) x <= r < y
"""

thinkNumber = random.randrange(1,31)
c=0
a1 = int(input("답은?"))
while a1!=thinkNumber:
     if a1 < thinkNumber:
        result = "답보다 큰 수 입니다."
        c+=1
     else :
        a1 > thinkNumber
        result = "답보다 작은 수 입니다."
        c+=1
     print(f"{result}")
     a1 = int(input("답은?"))
result = "정답입니다"
print(f"{result}")
print(f"{c}번 만에 찾았습니다.")

         
