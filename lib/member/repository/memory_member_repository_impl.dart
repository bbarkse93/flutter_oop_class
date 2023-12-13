import 'package:oop_class_01/member/member.dart';
import 'package:oop_class_01/member/repository/member_repository.dart';


// 메모리에 회원에 대한 데이터를 저장

// 1. dart에서 싱글톤 객체로 설계하기
class MemoryMemberRepositoryImpl implements MemberRepository{

  Map<num, Member> _memberStore = {};

  // 2. 인스턴스를 저장할 static변수 선언
  static MemoryMemberRepositoryImpl? _instance;

  // 1. private 생성자를 만들어서 외부에서 호출하지 못하도록 설계
  MemoryMemberRepositoryImpl._internal();

  // 3. 외부에서 호출할 수 있는 factory() 생성자를 만들어 준다.
  factory MemoryMemberRepositoryImpl() {
    if(_instance == null){
      _instance = MemoryMemberRepositoryImpl._internal();
    }
    return _instance!;
  }

  @override
  Member? findById(num memberId) {
    return _memberStore[memberId];
  }

  @override
  void save(Member member) {
    _memberStore[member.id] = member;
  }

}