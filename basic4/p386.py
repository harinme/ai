# json 파일을 파이썬으로 읽어오기
import json

with open("./basic4/member.json", "r", encoding="utf-8") as f:
    dict=json.load(f) # 가지고 오는 거

    print(dict)
    print(dict['history'])
    print(dict['history'][0])
    print(dict['history'][0]['data'])

    #pc 출력하기
    print(dict['history'][1]['route'])

     #나이 출력하기
    print(dict['age'])

with open("./basic4/b.json", "r", encoding="utf-8") as f1:
    dict1=json.load(f1)

    print(dict1)
    #home 출력하기
    print(dict1["contactNumbers"][0]['type'])
    #football 출력하기
    print(dict1["favoriteSports"][0])