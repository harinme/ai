# 병합, 합계, 순서 거꾸로, 정렬, 복사
person1= ["kim", 24, "kim@naver.com"]
person2= ["lee", 35, "lee@hanmail.com"]
person3= ["kim", 24, "kim@naver.com"]

person = person1+person2+person3
print(person)

scores = list(range(80,101,10))
print(scores)
su =sum(scores )
print(su)

# 리스트 안에 숫자랑 문자가 섞여 있다면? ->에러남
scores = [1,2,8.9]
print(scores)
su =sum(scores )
print(su)

jumsu = list(range(90,101,1))
avg= sum(jumsu)/len(jumsu)
print(avg)

data=['사과','배','귤', '딸기']
data.reverse()
print(data)
data.reverse()
print(data)

# 복사하기
fruits = ["apple",'banana','orange']
print(fruits)

x=fruits.copy()
print(x)
# copy는 그 안의 리스트를 가지고 와서 새로운 리스트를 만듦

xx=fruits
print(xx)
fruits.insert(1,"pineapple")
print(fruits)
print(x)
print(xx)


#정렬하기
data = [ 12,8,15,32,-3,-20,15,34,6]
data1=['a','A',"C",'!','한글','가나'] # 문자랑 숫자 섞이면 오류 #유니코드 번호 순서대로 정렬
data.sort()
print(data)
data1.sort()
print(data1)
data.sort(reverse=True)
print(data)