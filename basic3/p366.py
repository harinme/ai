'''
f=open("new_file1.txt","a",encoding="utf-8") #r은 읽기 w는 쓰기, a는 append

names=["이순신", "김희수"]

for name in names :
    f.write (name+"\n") # "\n" 줄 바꾸라

print("파일 쓰기 완료")
f.close()
'''

f=open("new_file1.txt","r",encoding="utf-8") #r은 읽기 w는 쓰기, a는 append

# lines=f.readlines() -> 여러줄을 한꺼번에 읽어준다
# line=f.readline() -> 한줄만을 읽는다. 그래서 반복문 이용하기
# print("파일 읽기 완료")
# print(lines)

while True:
    line=f.readline()
    if not line: break
    print(line)
f.close()