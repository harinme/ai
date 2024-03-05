import cv2 as cv
import sys

cap=cv.VideoCapture(0,cv.CAP_DSHOW) # 카메라와 연결 시도

if not cap.isOpened():
    sys.exit('카메라 연결 실패')
    
mode='c' # 연습문제5 추가 코드

while True:
    ret,frame=cap.read() # 비디오를 구성하는 프레임
    
    if not ret:
        print('프레임 획득에 실패하여 루프를 나갑니다.')
        break
    
    cv.imshow('Video display', frame)
    
    if mode =='c': # 연습문제 5 추가 코드
        cv.imshow('Video display', frame)
    elif mode=='g':
        gray= cv.cvtColor(frame, cv.COLOR_BG2GRAY)
        cv.imshow('Video display', gray)
    
    key=cv.waitKey(1) # 1밀리초 동안 키보드 입력 기다림
    if key==ord('q'): # 'q' 키가 들어오면 루프를 빠져나감
        break
    elif key == ord('g'): 
        mode='g'
    elif key ==ord('c'):
        mode='c'

cap.release() # 카메라와 연결 끊기
cv.destroyAllWindows()

# 연습문제 5