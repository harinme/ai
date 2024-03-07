# 3-8 보간을 이용해 영상의 기하 변환하기.py
import cv2 as cv

img = cv.imread('rose.png') # jpg 채널3개 png 채널 4개
patch = img[250:350, 170:270, : ]

img = cv.rectangle(img, (170, 250), (270, 350), (255, 0,0), 3) 
patch1 = cv.resize( patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_NEAREST)
patch2 = cv.resize( patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_LINEAR)
patch3 = cv.resize( patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_CUBIC)

cv.imshow( 'Original', img )
cv.imshow('Resize nearest', patch1 )
cv.imshow( 'Resize bilinear', patch2)
cv.imshow( 'Resize bicubic', patch3 )

cv.waitKey()
cv.destroyAllWindows()