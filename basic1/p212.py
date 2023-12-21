#2차원 리스트
# numbers=[[10,20,30],[40,50,60],[60,70,80],['a',[100,90]]]
# print(numbers[0][0])
# print(numbers[1][2])
# #80
# print(numbers [2][2])
# # a
# print(numbers[3][0])
# #100
# print(numbers[3][1][0])

# boards = [[1, '작성자1', '내용1'],[2, '작성자2', '내용2'],[3, '작성자3', '내용3']]
# # 내용 전부 출력하기
# # [0][0] [0][1] [0][2] [1][0] [2][1] [2][2] [3][0] [3][1] [3][2]

# for x in range(3):
#     for y in range(3):
#         print(boards[x][y], end=" ")
# print()

# for i in range(len(boards)):
#     for j in range(len(boards[i])):
#         print(boards [i][j], end=" ")
# print()

# # 내용 모두 출력하기
# jumsu=[[10,20],[30,40,50],[60]]
# # 생각 10을 출력하려면 [0][0], 20을 출력하려겨 [0][1]

# for i in range(len(jumsu)):
#     for j in range(len(jumsu[i])):
#         print(boards [i][j], end=" ")
# print()

# sm=0
# for i in range(len(jumsu)):
#     for j in range(len(jumsu[i])):
#         sm = sm + jumsu[i][j]
#         print(sm)

# print(sum(jumsu[0]))
# print(sum(jumsu[1]))
# # print(sum(jumsu))- 에러


# sm= sum(jumsu[0])
# print(sum(jumsu[1])+sum(jumsu[2]))
# print(sm)


# #for문 이용해서 전체 합 구하기
# sm=0
# for i in range(0,len(jumsu)):
#     sm+=sum(jumsu[i])
#     print(sm)

#     #217ㅔ
# strings=[["원두커피", '라떼', '콜라'], ['우동', '국수','피자', '파스타']]
# print(strings[1][1])
# # 피자 파스타 삭제하기
# strings[1].remove('피자')
# strings[1].remove('파스타')
# #원두커피를 아메리카노로 치환하기

# findColumindex = strings[0].index("원두커피") #열에대한 인덱스
# strings[0][findColumindex]= "아메리카노"

# print(strings[0])
# print(strings[1])

# # join() 리스트--> "문자열"
# # "문자열" replace 하기

strings = [ ["원두커피", "라떼", "콜라"], ["우동","국수","피자", "파스타"] ]
s1 = ", ".join( strings[0]) + " , ".join( strings[1])
print( s1 )
s1=s1.replace("원두커피", "아메리카노")
print( s1 )


# #222p
# seats = [[ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0]]
# print()
# for i in range(0,len(seats)):
#     print('%d행'%i, end=' ')
#     for j in range(0,len(seats[i])):
#         if seats[i][j]==0:
#             print("%3s" % "□", end="")
#         else:
#             print("%3s" % "■", end="")
#     print()

# row=int(input("좌석예약하기 행을 입력하세요"))
# colum=int(input("좌석예약하기 열을 입력하세요"))
# seats[row][colum]=1

# for i in range(0,len(seats)):
#     print('%d행'%i, end=' ')
#     for j in range(0,len(seats[i])):
#         if seats[i][j]==0:
#             print("%3s" % "□", end="")
#         else:
#             print("%3s" % "■", end="")
#     print()

#좌석을 몇 개 예약하시겠습니까?

# seats = [[ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0],\
#          [ 0,0,0,0,0,0,0,0,0,0]]
# print()
# for i in range(0,len(seats)):
#     print('%d행'%i, end=' ')
#     for j in range(0,len(seats[i])):
#         if seats[i][j]==0:
#             print("%3s" % "□", end="")
#         else:
#             print("%3s" % "■", end="")
#     print()

# num= int(input("좌석을 몇 개 예약하시겠습니까?"))
# count=1
# while count<=num:
#     row=int(input("좌석예약하기 행을 입력하세요"))
#     colum=int(input("좌석예약하기 열을 입력하세요"))
#     seats[row][colum]=1
#     count +=1 
#     for i in range(0,len(seats)):
#         print('%d행'%i, end=' ')
#         for j in range(0,len(seats[i])):
#             if seats[i][j]==0:
#                 print("%3s" % "□", end="")
#             else:
#                 print("%3s" % "■", end="")
#         print()

my_list=['p','y','t','h','o','n','i','s','f','u','n','!']
# my_list=list("pythin  is fun!")
print(my_list[5:11])
print(my_list[-5:-2])
print(my_list[8:])
print(my_list[:4])

list= []
for i in "I am a genius!":
    list.append(i)
print(list)
###5-7
numbers=[7,9,15,18,30,-3,7,12,-16,-12]
# s=sum(numbers)
# print(s)
# sum=0
# for i in numbers:
#         sum+=i
# print(sum)
numbers=[7,9,15,18,30,-3,7,12,-16,-12]
count=0
sm=0
while count<len(numbers):
    sm+=numbers[count]
    count+=1
print(sm)

##5-9
numbers=[7,9,15,18,30,-3,7,12,-16,-12]
count=1
sm=0
while count<len(numbers):
    if numbers[count] %2!=0:
        print(numbers[count],end=" ")
        sm+=numbers[count]
    count+=1
print("합계 %d"%sm)

###5-10
# fruits=['사과','오렌지','딸기','수박','멜론']
# for i in range(len(fruits)):
#       print("%d. %s"%(i+1,fruits[i]))

# data= [[10,20,30],[40,50],[60,70,80,90]]

# for row in range(0,len(data)):
#     for x in data[row]:
#         print(x, end=' ')
#     print()

'''data= [[10,20,30],[40,50],[60,70,80,90]]

for row in data:
    for x in row:
        print(x, end=' ')
    print()'''

# data= [[10,20,30],[40,50],[60,70,80,90]]

# for i in range(0,len(data)):
#     for j in range(0,len(data)):
#         if j==0:
#              print(data[i][j],end=' ')
#     print()

# # 심화문제 5-1
# # file_names = ['file1.py', 'file2.txt', 'file3.pptx', 'file4.doc']
# # a= 'file1.py'
# # aS=a.split(".")
# # print(aS[0])
# # for file_name in file_names:
# #     fS= file_name.split('.')
# #     print(f"{file_name}=> 파일명: {fS[0]}, 확장자:{fS[1]}")

# #     # 심화문제 5-2
# # emails = [["kim", "naver.com"], ["hwang", "hanmail.net"],
# #           ["lee", "korea.com"],["choi", "gmail.com"]]
# # email_new = []
# # for email in emails :
    
# #     email_new.append(  (email[0]+"@"+email[1])           )
# # print( email_new )