# 속성 : java 에서 말하는 필드, 변수
# class A {
#     int k=10; // 인스턴스 필드 - 파이썬에서는 인스턴스 속성 >> 자료쓰고 변수 버림.
#     static int sk = 10; // 정적 필드 - 파이썬에서는 클래스 속성>> 자료 계속 유지
# }

class Student:
    
    pet =[] #클래스 속성, 객체 바뀌어도 값을 계속 유지함.

    def push_pet(self,x):
        self.pet.append(x)

john=Student() #객체화
john.push_pet("고양이")
print(john.pet)

sally=Student()
sally.push_pet("강아지")
print(sally.pet)

class Student:
    
    # pet =[] #클래스 속성, 값을 계속 유지함.
    def __init__(self) -> None:
        self.pet =[] #인스턴스 속성, 객체화할 때마다 지워진다.

    def push_pet(self,x):
        self.pet.append(x)

john=Student() #객체화
john.push_pet("고양이")
print(john.pet)

sally=Student()
sally.push_pet("강아지")
print(sally.pet)