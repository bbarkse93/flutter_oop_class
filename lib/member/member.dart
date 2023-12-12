import 'package:oop_class_01/member/grade.dart';

class Member {
  num id;
  String name;
  Grade grade;

  Member({required this.id, required this.name, required this.grade});

  @override
  String toString() {
    return 'Member{id: $id, name: $name, grade: $grade}';
  }
}