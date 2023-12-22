#set형 -> 집합
color_list={'red', 'blue','red','green'}
print(color_list)
# print(color_list[0:2]) error (순서가 없기 때문)

p={1,2,'red','blue'}
plus=color_list&p #   &는 교집합
print(plus)

plus=color_list|p #   |는 합집합
print(plus)

plus=color_list-p #   -는 차집합
print(plus)

a={1,2,3}
# 3을 수정
a.update({1,2,4}) # 기존에다가 추가하는 것
print(a)
a.remove(3)
print(a)

#삽입하기, 추가하기
b={10,11}
b.add(20)
print(b)
#수정하기
b.update({5})
b.remove(10)
print(b)