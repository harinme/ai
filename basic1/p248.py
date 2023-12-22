#연습문제 튜플과 디셔너리
year_sale={"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}
print(year_sale)

#e6-1
year_sale={"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}
for key in year_sale:
    if key == "2017":
        print("%s년 자동차 판매량: %d대"%(key,year_sale[key]))

#e6-2
year_sale={"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}
sm=0
for key in year_sale:
    if key==2018 or key==2019:
        print("%s년 자동차 판매량: %d"%(key,year_sale[key]))
        sm=sm+year_sale[key]
print("2년간 자동차 판매량: %d대"%sm)

#e6-3
year_sale={"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}
sm=0
for key in year_sale:
     sm=sm+year_sale[key]

avg=sm/len(year_sale)

print("5년간 자동차 판매량: %d대"%sm)

print("5년간 평균 판매량: %d대"%avg)

#e6-4
year_sale={"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}

big_year=2016
biggest=year_sale["2016"]
for key in year_sale:
    if year_sale[key]>biggest:
        big_year=key
        biggest=year_sale[key]
print("판매량이 가장 많은 해: %s년"%big_year)
print("판매량: %d대 "%biggest)


person={'name':"홍길동","age":30,"family":5,"children":["선미","성진","소영"],"pets":["강아지","고양이","이구아나"]}
#e6-5
print(person["age"]) # 30

#e6-6
print(len(person)) # 5

#e6-7

#e6-8

#심화문제

temp = {"월":15.5, "화":17.0, "수":16.2, "목":12.9, "금":11.0, "토":10.5, "일":13.3}
#1
print('-'*40)
for key in temp:
    print("%3s "%key,end=" ")
print()
print('-'*40)
for key in temp:
    print("%.1f "%temp[key],end=" ")
print()
print('-'*40)

#2
min=999
min_key="월"
for key in temp:
    if min>temp[key]:
        min=temp[key]
        min_key=key

print("요일: %s, 최저 기온: %.1f"%(min_key,min))

#3
sum=0
for key in temp:
    sum=sum+temp[key]

avg=sum/len(temp)
print("일주일간 기온 평균 %.1f"%avg)