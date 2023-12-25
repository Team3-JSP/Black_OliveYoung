package com.blackolive.app.controller.order;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderHandler {
	String deliveryId;			// 배송지 id
	String deliveryMsg;			// 배송메시지
	String visitHow;			// 출입 방법
	String visitPwd;			// 출입 비번
	String totalPrice;			// 총 상품 금액
	String totalPay;			// 총 결제 금액
	String deliveryPrice;		// 배송비
	String payType;				// 결제 수단
	String cardType;			// 카드 종류
	String[] products;			// 주문한 상품 id와 수량 
	String giftYn;				// 선물 여부	
	
	String quickYN;				// 오늘 드림 여부
	String pickupYN;			// 픽업 여부
	String packaginOption; 		// 선물 포장 여부
	String installmentType;		// 할부종류
	String couponDiscountPrice; // 쿠폰할인금액
	String pointPrice; 			// 포인트 결제 금액
	String click;				// 어떤 버튼을 누르고 주문페이지로 온지
	
}
