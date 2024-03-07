# 4-1 소벨 에지 검출하기 

import cv2 as cv

img = cv.imread('soccer.jpg')
gray = cv.cvtColor( img, cv.COLOR_BGR2GRAY)

# x방향의 연산을 적용
# cv.Sobel( 영상, 32비트실수맵으로 저장, x방향연산자사용(1,0), 3X3 크기)
grad_x = cv.Sobel( gray, cv.CV_32F, 1, 0, ksize=3 )
#                                  y방향 연산 사용(0,1)  
grad_y = cv.Sobel( gray, cv.CV_32F, 0,1, ksize=3 )

# 음수가 포함된 맵에 절대값을 취해 양수로 변환한다.
# convertScaleAbs() 8비트형인 CV_8U(numpy의 uint8과 같음)
sobel_x = cv.convertScaleAbs( grad_x )
sobel_y = cv.convertScaleAbs( grad_y )

# sobel_x와 sobel_y에 0.5(임의 변경할 수 있음)를 곱해서 더하여 0을 더함
# 즉 sobel_x * 0.5 + sobel_y * 0.5 + 0한 것임
edge_strength = cv.addWeighted(sobel_x, 0.5, sobel_y, 0.5, 0)

cv.imshow('Original', gray)
cv.imshow('sobelx', sobel_x)
cv.imshow('sobely', sobel_y)
cv.imshow('edge strength', edge_strength)

cv.waitKey()
cv.destroyAllWindows()
