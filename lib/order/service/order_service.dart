import 'package:oop_class_01/order/order.dart';

abstract class OrderService {
  // 주문 생성
  Order createOrder(num memberId, String itemName, int itemPrice);

}