import 'package:flutter_test/flutter_test.dart';
import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/fix_discount_policy.dart';
import 'package:oop_class_01/order/order.dart';
import 'package:oop_class_01/order/service/order_service.dart';
import 'package:oop_class_01/order/service/order_service_impl.dart';

void main() {

  late MemberRepository memberRepository;
  late DiscountPolicy discountPolicy;
  late OrderService orderService;

  // 매번 실행시 마다 초기화 값이 필요하다면
  setUp(() {
    memberRepository = MemoryMemberRepositoryImpl();
    discountPolicy = FixDiscountPolicy();
    orderService = OrderServiceImpl(memberRepository, discountPolicy);
  });

  test("고정금액 할인 테스트", () {

    // given
    Member member = Member(id: 100, name: "홍길동", grade: Grade.VIP);
    memberRepository.save(member);

    // when
    discountPolicy = FixDiscountPolicy();
    Order order1 = orderService.createOrder(member.id, "맥북", 2000000);
    print(order1.toString());

    // then
    expect(order1.discountPrice, 1500);

  });
  test("주문 테스트 2", () {});
}
