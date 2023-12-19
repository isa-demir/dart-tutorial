// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // late final int age;
  // print('before');
  // age = getAge();
  // print('after');

  // print(age);

  print('Instance of family creating!');
  Family family = Family(members: [Person('jesus'), Person('john')]);
  print('Instance of family created!');
  print(family.members);
  print(family.memberCounts);
}

int getAge() {
  print('get age called!');
  return 22;
}

class Person {
  final String name;

  Person(this.name);
}

class Family {
  final Iterable<Person> members;
  late final int memberCounts = getMemberCount();
  Family({
    required this.members,
  });

  int getMemberCount() {
    print('getMemberCount() called!');
    return members.length;
  }
}
