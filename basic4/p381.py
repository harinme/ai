import csv

rf=open("./basic4/a.csv","r")
wf=open("./basic4/a_copy.csv","w", newline="") # newline="" 이러면 줄 바꿈 안됨

r=csv.reader(rf)
w=csv.writer(wf)

for i in range(3) :
    line=next(r)
    w.writerow(line)

r.close()
w.close()