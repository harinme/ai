# 온라인 서점의 책 결제 금액
price = 20000
discount=10
delivery=3000
pay= price - (price*(discount/100)) + delivery
print(f"책 값은 {price}, 할인율은 {discount}%,")
print(f"배송료{delivery}, 결제금액은 {int(pay)}")


# 만약에 배송료가 2000원 이상이면 비싸다. 배숑료 *0.02 추가 할인
# 아니면 저렴하다 
if delivery >=2000 :
    print("비싸다")
    delivery=delivery*(98/100)
else :
    print("저렴하다")
    
pay= price - (price*(discount/100)) + delivery
print(f"책 값은 {price}원, 할인율은 {discount}%,")
print(f"배송료는 {int(delivery)}원, 결제금액은 {int(pay)}원 입니다.")