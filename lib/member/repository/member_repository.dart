
// 역할만 선언
import 'package:oop_class_01/member/member.dart';

abstract class MemberRepository {

  void save(Member member);

  Member? findById(num memberId); // DB, 메모리에 없는 경우가 있다.

}