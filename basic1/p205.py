#특정 문자열 찾기, 문자열 치환, 문자열 쪼개기
# string1="Python is fun!"
# print(string1)
# a= string1.find("n") # find는 앞에 있는 거 먼저 찾아줌.
# print(a)

# studentName='홍길동, 이순신, 이경미, 최수진'
# b=studentName.find("최수진")

# #최수진 있어요?
# if b==-1:
#     print("우리반 아닙니다.")
# else:
#     print("우리반 입니다")
    

# #치환하기
# c=studentName.replace("최수진", "정수진")
# print(c)
# c=c.replace("이수진","박수진")
# print(c)

# data = "홍길동/이순신/최경주"
# data = data.replace("/"," ")
# print(data)

# data = data.replace(" ","-")
# print(data)

# #데이터 쪼개기
# hello='have a nice day; Happy new Year; Merry Christmas'
# list1=hello.split(";") # 암것도 안쓰면 공백을 기준으로 자르고 리스트에 담음
# print(list1)
# list1=hello.split(";",1)
# print(list1,)


# names=['황애린','홍지수','안지영']
# print(names)
# x="/".join(names)
# print(x)

# ph=["010","1234","1234"]
# v="-".join(ph)
# print(v)

# #209 5-25
# phone_list1=["010-3654-2637","010-3984-5377",'010-3544-0973']
# print(phone_list1)

# phone_list2=[]
# for number in phone_list1:
#     x=number.replace("-","")

#     phone_list2.append(x)

# print(phone_list2)

# #210 5-26
# sentences =["Love me, love my dog.", "No news is good news.", "Blood is thicker than water"]
# for sentences in sentences:
#     x= sentences.replace(" ","_")
#     print(x)

# #218 5-5
# qu=["s_hool", "compu_er","deco_ation","windo_","hi_tory"]
# an=["c","t","r","w","s"]
# for i in range(0,len(qu),1):
#     q="%s : 밑 줄에 들어갈 알파벳은?"%qu[i]
#     guess=input(q)

#     if guess==an[i]:
#         print("정답!")
#     else:
#         print("틀렸어요!")

#219 5-6
scores=[]

while True:
    x=int(input("성적을 입력하세요(종료 시 -1 입력): "))

    if x==-1:
        break
    else:
        scores.append(x)
# sum =0
# for score in scores:#score에 scores를 넣는다
#     sum+=score
sm=sum(scores)
avg=sm/len(scores)
print("합계: %d,평균: %.2f"%(sum,avg))