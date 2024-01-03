## 예외처리
#오류를 대처하는 방법을 프로그래밍하기
#형식 try : 내용
    # except :오류처리 내용
    # finally:오류나 정상이나 모두 처리되는 내용

try :
    x=10
    print(x)
    def devide(a,b):
        c=a/b
        print(c)
    devide(10,0)
except NameError:
    print("변수 값이 없습니다.")
except ZeroDivisionError :
    print("0으로 나눌 수 없다.")
finally:
    print("모두 처리됨")