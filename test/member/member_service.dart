import 'package:flutter_test/flutter_test.dart';
import 'package:oop_class_01/member/grade.dart';
import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';
import 'package:oop_class_01/member/repository/memory_member_repository_impl.dart';
import 'package:oop_class_01/member/service/member_service.dart';
import 'package:oop_class_01/member/service/member_service_impl.dart';

void main(){

  test("회원 서비스 테스트1", () {

    // given

    MemberRepository memberRepository = MemoryMemberRepositoryImpl();
    MemberService memberService = MemberServiceImpl(memberRepository);
    Member newMember = Member(id: 1, name: "홍길동", grade: Grade.BASIC);

    // when

    memberService.signUp(newMember);
    Member? findMember = memberService.findByIdMember(newMember.id);
    print(findMember.toString()); // 로그가 정상적으로 나온다면 자료구조에 잘 저장 됨

    // then
    expect(findMember, isA<Member>()); // findMember 의 타입 확인
    expect(findMember?.id, 1); // 찾은 멤버에 id값이 1로 기대를 한다.
  });


}