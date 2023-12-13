// 프로그램이 시작될 때 객체들을 먼저 메모리에 올리는 녀석
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/member/service/member_service.dart';
import 'package:oop_class_01/member/service/member_service_impl.dart';
import 'package:oop_class_01/order/discount_policy.dart';
import 'package:oop_class_01/order/fix_discount_policy.dart';
import 'package:oop_class_01/order/service/order_service.dart';
import 'package:oop_class_01/order/service/order_service_impl.dart';

class AppConfig{
  MemberRepository getMemberRepository(){
    return MemoryMemberRepositoryImpl();
  }

  MemberService getMemberService(){
    return MemberServiceImpl(getMemberRepository());
  }

  DiscountPolicy getDiscountPolicy(){
    return FixDiscountPolicy();
  }

  OrderService getOrderService(){
    return OrderServiceImpl(getMemberRepository(), getDiscountPolicy());
  }

}