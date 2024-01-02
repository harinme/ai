# 딕셔너리를 json 으로 인코딩하기 -> string으로 만들기
'''
import json

member = {
            "id":"swhong",
            "name":"홍성우",
            "age":23,
            "history":[
                {"data":"2021-03-15", "route":"mobile"},
                {"data":"2020-06-23","route":"pc"}]
            }
string=json.dumps(member, ensure_ascii=False, indent=4)
print(string)
print(type(string))
'''
# **** 중요!! 파이썬의 딕셔너리를 json 파일로 만들기(저장, 쓰기)
# 이 json 파일을 다른 곳에서 이용하면 된다.
import json

k = {
            "id":"kim",
            "name":"김유신",
            "age":25,
            "history":[
                {"data":"2021-03-15", "route":"mobile"},
                {"data":"2020-06-23","route":"pc"}]
            }
with open("./basic4/member.json", "a", encoding="utf-8") as f:
    json.dump(k, f, ensure_ascii=False, indent=8)
    # k 내용을 f 파일에 추가해서 넣는다. 8정도의 들여쓰기를 해달라. 