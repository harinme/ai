import cv2 as cv
import sys

img = cv.imread('girl_laughing.jpg')

if img is None:
    sys.exit('파일을 찾을 수 없습니다')
    
cv.rectangle(img, (830,30), (1000,200),(0,0,255),2)
#  직사각형 (그릴이미지, 직사각형의 왼쪽 위 좌표, 아래 오른쪽의 좌표, 색깔, 두께)
cv.putText(img,'laugh', (630,100), cv.FONT_HERSHEY_SIMPLEX, 1, (255,0,0),2)
# 글자 쓰기(이미지, 글자, 위치, 폰트체, 글자 크기, 색깔, 글자 두께)
cv.arrowedLine(img, (720,170), (820,170), (255,0,0),2)
# 화살표 그리기 ( 이미지, 왼쪽 시작좌표, 오른쪽 끝좌표, 색깔, 두께)

cv.circle(img, (900,120), 100, (0,255,0),2)

cv.imshow('Draw', img)

cv.waitKey()
cv.destroyAllWindows()