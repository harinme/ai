a= 10
print(a)

def f():
    global x # 함수 밖에 있는전역 함수
    x=100
    print(x)
x=25
f()
