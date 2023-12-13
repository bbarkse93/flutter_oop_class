

// 코드의 시작점
import 'package:oop_class_01/app_config.dart';
import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/member/service/member_service.dart';
import 'package:oop_class_01/member/service/member_service_impl.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/fix_discount_policy.dart';
import 'package:oop_class_01/order/order.dart';
import 'package:oop_class_01/order/service/order_service.dart';
import 'package:oop_class_01/order/service/order_service_impl.dart';

void main() {
  // 관심사를 분리
  // AppConfig 설정 파일만 변경해주면 된다.

  AppConfig appConfig = AppConfig();

  MemberRepository memberRepository = appConfig.getMemberRepository();
  MemberService memberService = appConfig.getMemberService();

  DiscountPolicy discountPolicy = appConfig.getDiscountPolicy();
  OrderService orderService = appConfig.getOrderService();

  // Mock 유저 생성
  Member newMember = Member(id: 200, name: "야스오", grade: Grade.VIP);
  // 회원가입 처리
  memberService.signUp(newMember);
  // 회원 조회
  Member? findMember = memberService.findByIdMember(200);

  print(findMember.toString());

  // 주문 생성

  Order order1 = orderService.createOrder(findMember?.id ?? 200, "맥북", 2000000);
  print(order1);

}

