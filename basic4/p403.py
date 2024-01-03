# 생성자
# 자바식 코드
# class P{
#     void P(String name, int age){
#         // 생성자 용도 : 객체생성하면서 초기화 할 때
#     }
# }
class Members:
    def __init__(self) : # # 생성자_init_(self)
        self.name=None
        self.age=None
        self.gender=None
    def __init__(self, name=None, age=None,gender=None) : # # 생성자_init_(self)
        # 생성자 중에서 파라미터가 가장 긴 거를 두고 기본형 파라미터를 하나 생성.
        # 전체에 None이라는 기본값을 넣어준다.
        self.name=name
        self.age=age
        self.gender=gender
    def show_info(self):
        print("이름 : ", self.name)
        print("나이 : ", self.age)
        print("성별 : ", self.gender)

# 객체 생성
m1= Members("홍길동", 25)
m1.show_info()

m2= Members("홍길동", 25, True)
m2.show_info()

# m3= Members("홍길동", 25, True, "a") - error
# m3.show_info() - error # 생성자의 파라미터가 적으므로 에러 발생