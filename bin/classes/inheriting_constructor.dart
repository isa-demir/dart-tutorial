// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

enum RoleType { dad, mom, daughter, son }

class Person {
  final RoleType type;
  const Person({
    required this.type,
  });
}

class Mom extends Person {
  const Mom() : super(type: RoleType.mom);
}

class Dad extends Person {
  const Dad() : super(type: RoleType.dad);
}
