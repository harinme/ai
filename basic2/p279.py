# 지역 변수
# 전역 변수
# 변수의 생명주기 life cycle
# def func():
#     x = 10 # 태어남 만들어짐 지역변수 이곳을 벗어나면 사용 못함
#     print(x)

# func()

# gx=200 # 파일에서 태어남, 파일 안에서는 다 쓸 수 있다. 전역변수
# def func2():
#     # gx = gx + 300 error
#     print(gx)

# func2()
# print(gx)
# gx= gx+300 #오류 없음
# print(gx)

# #
# def func3():
#     global y # 함수 안에 선언 할 변수를 전역 변수로 만들고 싶을 경우 global 선언
#     # 그러면 스택 공간에 변수를 할당한다
#     # 계속 살아남는 변수
#     #ex) 장바구니, 로그인 계속 유지, 포인트 계속 보이기
#     y=300
#     y=y-100
#     print(y)

# def func3():
# # print(y) 지역함수라서 global 안 쓰면 파일 내에서 못 씀
#     print(y)
#     y=y+20
#     print(y)

# def func4():
#     print(y,"~~~")

# func4()

# 
def func5():
    global x
    x= 200
    print(x,"~")

x=100
print(x, "~~")
func5()
print(x, "~~~")

#284
def cir_area():
    global r # 이거 삭제해도 밖에 전역함수로 r이 정의되어 있기 때문에 오류나지 않음.
    result=r*r*3.14
    return result

def cir_length():
    global r
    result=2*3.14*r
    return result

r= float(input("반지름을 입력하세요: "))
area = cir_area()
length = cir_length()
print("원의 면적: %.1f, 원주의 길이: %.1f"%(area,length))