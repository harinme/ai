import p326 as p
# p326를 불러오고 p라고 애칭을 정함.
p.greet1("홍길동")
p.greet2("이순신")



from p326 import greet1
# p326d에서 greet1을 가져옴.
greet1("홍길동")
# greet2("이순신") ->> from p326 import greet1, greet2라고 명시 안해주면 greet1은 안 따라옴.


