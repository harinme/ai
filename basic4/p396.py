# 클래스 : 설계도 (필드-변수, 함수-동작)
# 객체 object: 클래스를 메모리에 올려서 실제 자료를 넣어주는 것
# 메소드 : 클래스 안에 있는 함수, 동작하기
# 필드: 파이썬에서 속성

class Person: # 클래스의 첫 글자는 대문자
    name= "홍길동"
    list1=[]
    def method1(self): # self 자기자신 Person 클래스를 가르킴. self 안 적으면 호출 할 때 오류남
        print("메소드임")
    def method2(self, age): 
        print("나이는", age)

# 클래스를 사용하기
p1= Person() # java-> Person p1 = new Person()
print(p1.name)
print(Person.name)

p1.list1.append("aa")
print(p1.list1)
print(Person.list1)

p1.method1()
# Person.method1() -Error

p1.method2(25)
# Person.method2(25) -Error
