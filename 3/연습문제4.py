import cv2 as cv
import numpy as np

img=cv.imread('soccer.jpg')
img=cv.resize(img, dsize=(0,0), fx=0.4, fy=0.4)
gray=cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.putText(gray, 'soccer', (10,20), cv.FONT_HERSHEY_SIMPLEX,0.7, (255,255,255),2)
cv.imshow('Original', gray)

# GaussianBlur (영상, 필터의 크기, 표준편차 0.0으로 하면 필터 크기를 보고 자동 추정)
smooth=np.hstack((cv.GaussianBlur(gray, (5,5),0.0), 
                  cv.GaussianBlur(gray, (9,9),0.0), 
                  cv.GaussianBlur(gray, (15,15),0.0)))
cv.imshow('Smooth', smooth)
# 엠보싱 필터를 정의
f1 = np.array([[-1.0, -1.0, -1.0],
                    [0.0, 0.0, 0.0],
                    [1.0, 1.0, 1.0]
                    ])
f2 = np.array([[0.0, -1.0, 0.0],
                    [-1.0, 4.0, -1.0],
                    [0.0, -1.0, 0.0]
                    ])
f3 = np.array([[-1.0, 0.0,0.0],
                    [0.0, 0.0, 0.0],
                    [0.0,0.0,1.0]
                    ])

gray16= np.int16(gray)
ff1 = np.uint8(np.clip(cv.filter2D(gray16, -1, f1) + 128,0,255  ))


ff2 = np.uint8(np.clip(cv.filter2D(gray16, -1, f2) + 128,0,255  ))
ff3 = np.uint8(np.clip(cv.filter2D(gray16, -1, f3) + 128,0,255  ))

cv.imshow('ff1', ff1)
cv.imshow('ff2', ff2)
cv.imshow('ff3', ff3)

cv.waitKey()
cv.destroyAllWindows()