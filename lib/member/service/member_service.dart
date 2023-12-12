// 역할 선언
import 'package:oop_class_01/member/member.dart';

abstract class MemberService{

  void signUp(Member member);

  Member? findByIdMember(num memberId);

}