import 'package:oop_class_01/member/member.dart';

abstract class DiscountPolicy{
  // 할인 처리 - 멤버의 등급에 따라 할인 금액 결정 (정액, 정률)
  int discount(Member member, int price);

}