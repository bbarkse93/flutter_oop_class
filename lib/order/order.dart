
// 주문 클래스 생성
class Order {

  num memberId;
 String itemName;
 int itemPrice;
 int discountPrice;

  Order({required this.memberId,  required this.itemName, required this.itemPrice, required this.discountPrice});

  @override
  String toString() {
    return 'Order{memberId: $memberId, itemName: $itemName, itemPrice: $itemPrice, discountPrice: $discountPrice}';
  }
}