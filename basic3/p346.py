import datetime
# import datetime as dt
# from datetime import timedelta , date, now, strftime,today

time1=datetime.timedelta(days=3,hours=2,minutes=30)
time2=datetime.timedelta(days=5,hours=5,minutes=40)
print(time2-time1)
print(time2+time1)

#오늘 날짜 구하기
today=datetime.date.today()
print(today)
week=datetime.timedelta(weeks=1)
next_week=today+week
print(next_week)
before_week=today-week 
print(before_week)

now=datetime.datetime.now()
#모듈 명, 클래스명, 함수명()
print(now)
print(now.year)
print(now.month)
print(now.day)
print(now.minute)
print(now.second)
print(now.astimezone)