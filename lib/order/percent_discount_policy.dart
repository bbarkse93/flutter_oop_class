import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/order/discount_policy.dart';

// 퍼센트에 따른 할인
class PercentDiscountPolicy implements DiscountPolicy{

  double discountPercent = 10; // 10%할인

  @override
  int discount(Member member, int price) {
    if(member.grade == Grade.VIP){
      return (price * (discountPercent / 100)).toInt();
    }
    return 0;
  }

}