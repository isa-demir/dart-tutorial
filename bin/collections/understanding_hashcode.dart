// ignore_for_file: avoid_print

void main(List<String> args) {
  int a = 20;
  int b = 20;

  print('a ve b iki ayni tamsayi');
  print(a.hashCode);
  print(b.hashCode);
  // ikiside ayni ciktiyi verdi
  print('----------');

  print('a ve c iki farkli tamsayi');
  int c = 10;
  print(a.hashCode);
  print(c.hashCode);
  //ikisi de farkli cikti verdi
  print('----------');

  print('n1 ve n2 iki ayni string');
  String n1 = 'jes';
  String n2 = 'jes';
  print(n1.hashCode);
  print(n2.hashCode);
  //ikisi de ayni ciktiyi verdi
  print('----------');

  print('s1 ve s2 ozellikleri ayni iki nesne');
  final s1 = Student(20, 'jes');
  final s2 = Student(20, 'jes');
  print(s1.hashCode);
  print(s2.hashCode);
  print(s1 == s2);
  //ikisi de farkli cikti verdi
  print('----------');

  print('s1 ve s2 identical control');
  if (identical(s1, s2)) {
    print('they are identically same');
  } else {
    print('they are not same');
  }
  print('----------');

  ///dart == ile nesnelerin hashcodelarini kontrol eder! asagidaki kontrolu saglarken
  ///kendi hashcodumuzu ozelliklerin aldigi degere gore hesapladigimiz icin ayni olmasi
  ///gerekir. Yani name ve age alanlari icin girilen degerler ayni oldugunda ayni
  ///hashcode'unu uretmesini bekliyoruz.
  final p1 = Person(20, 'jes');
  print(p1.hashCode); // age: 20 name: 'jes'
  print(s1.hashCode); // age: 20 name: 'jes'
  if (p1 == s1) {
    print('they are equal');
  } else {
    print('they are not equal');
  }

  if (identical(p1, s1)) {
    print('they are identically same');
  } else {
    print('they are not same');
  }

  print('p3 and p1 identically check!');
  final p3 = p1;
  if (identical(p1, p3)) {
    print('they are identically same');
  } else {
    print('they are not same');
  }
  print(p1 == p3);
}

class Student {
  final int age;
  final String name;

  Student(this.age, this.name);

  @override
  int get hashCode => age.hashCode ^ name.hashCode;
}

class Person {
  final int age;
  final String name;

  Person(this.age, this.name);

  @override
  int get hashCode => age.hashCode ^ name.hashCode;
}
