// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:test/test.dart';

void main(List<String> args) {
  FamilyMember dad = FamilyMember(name: 'Idris');
  FamilyMember mom = FamilyMember(name: 'Emine');

  final members = dad + mom;

  print(members);
}

class FamilyMember {
  final String name;
  FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'name = $name';
}

class Family {
  List<FamilyMember> members;
  Family({
    required this.members,
  });

  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(
        members: [this, other],
      );
}
