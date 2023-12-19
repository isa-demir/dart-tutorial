/*
  Late Keyword
*/

/// late anahtar kelimesini kullanarak programlama dili ile bir nevi anlasma yapiyoruz
/// late kullandigim degiskene kullanmadan once deger atayacagima soz veriyorum gibi
late String name;

void main(List<String> args) {
  name = 'Action';
  try {
    print(name);
  } catch (e) {
    print(e.toString());
  }
}
