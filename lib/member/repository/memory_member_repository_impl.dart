import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';


// 메모리에 회원에 대한 데이터를 저장
class MemoryMemberRepositoryImpl implements MemberRepository{

  Map<num, Member> memberStore = {};

  @override
  Member? findById(num memberId) {
    return memberStore[memberId];
  }

  @override
  void save(Member member) {
    memberStore[member.id] = member;
  }

}