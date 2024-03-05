import cv2 as cv
import sys

img = cv.imread('soccer.jpg')

if img is None:
    sys.exit('파일을 찾을 수 없습니다')
    
cv.imshow( 'Image Display', img)

cv.waitKey() 
cv.destroyAllWindows()
   

# 연습 문제 이미지 2개를 화면 보이기
img1=cv.omread('opencv.png')
img