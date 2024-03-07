# 4-6 정규화 절단 알고리즘으로 영역 분할하기
import skimage
import numpy as np
import cv2 as cv
import time

coffee = skimage.data.coffee()

start = time.time()
"""
 단계 1. slic() --> 2. rag_mean_color() --> 3.  cut_normalized()--> 4. mark_boundaries()
 1. 슈퍼화소분할 --> 2. 영상의 그래프 표현(에지 가중치로 그래프 구성) -->
 3. 정규화 절단 알고리즘 --> 4. 영역분할 정보를 담은 ncut 맵을 이용하여 영역경계를 표시하고 marking 객체에 저장
"""
slic= skimage.segmentation.slic(coffee, compactness=20, n_segments=600, start_label=1) # 1단계

g= skimage.graph.rag_mean_color(coffee, slic, mode='similarity') # 2단계 교재 140p 영상 그래프 표현
ncut = skimage.graph.cut_normalized(slic, g) # 3단계 정규화 절단 교재 141p
print(coffee.shape, 'Coffee 영상을 분할하는 데 ', time.time()- start, '초 소요')

marking = skimage.segmentation.mark_boundaries(coffee, ncut) # 4단계
ncut_coffee = np.uint8(marking*255.0)

cv.imshow('Normalized cut', cv.cvtColor(ncut_coffee, cv.COLOR_RGB2BGR))

cv.waitKey()
cv.destroyAllWindows()