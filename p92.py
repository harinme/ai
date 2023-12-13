#1.
z=10
y=20
print(z+y)

#2.
z=10
y=20
print(f"{z}+{y}={z+y}")

#3.
print(f"{z}+{y}={str(z+y)}")
"""
#4.
one=input("첫번째 과일을 입력하세요: ")
two=input("두 번째 과일을 입력하세요: ")
print("%s와(과) %s은(는) 내가 좋아하는 과일이다."%(one,two))

#5.
print(f"{one}와(과) {two}은(는) 내가 좋아하는 과일이다.")
"""
# #7
# one=input("첫 번째 숫자를 입력하세요: ")
# two=input("두 번째 숫자를 입력하세요: ")
# o=int(one)
# t=int(two)
# print(o/t)

"""
#8
k=o/t
print("%.3f"%k)
m="%.3f" %k
if m[] >= 0.004 :
    m="%.3f" %k -m[-1]*1/1000
    print(m+0.01)
"""
#95p 심화문제

# kg = input("변환할 킬로그램(kg)은")
# print("-"*30)
# print("킬로그램     파운드    온스 ")
# print("-"*30)
# pound = int(kg) * 2.204623
# ounce = int(kg) * 35.273962
# # print(f"{kg}    {pound}   {ounce}")
# print("%d       %.2f      %.2f"%(int(kg), pound, ounce ))
# print("-"*30)

#s2-2
# phone = input("휴대번호는?") 
# # 방법1) "-" 찾아서 "" 바꾸기
# deleteHy = phone.replace("-", "")
# print(f"입력된 휴대번호 : {phone}")
# print(f"하이픈 삭제된 휴대번호 {deleteHy}")
# # 방법2) split("-")  010-1234-5678
# deletHy2 = phone.split("-") 
# print( deletHy2[0], deletHy2[1], deletHy2[2], sep="" )


#2-13
number="37366366845"
print(number[-2: : ])

#2-12
string="가는 말이 고와야 오는 말이 곱다"
string=string.split(" ")
print(string[2:4])