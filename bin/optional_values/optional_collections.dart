// ignore_for_file: dead_code

void main(List<String> args) {
  List<String?>? names;

  names?.add('foo');

  /// names.add('foo'); /// bu sekilde kullanamayiz cunku liste null olabilir
  /// burada soru isareti koyarak names null degilse calis diyoruz!
  names?.add('hello');
  print(names);

  final first = names?.first ?? 'foo';
  print(first);

  String? yourName;

  void setName() {
    yourName = 'John';
  }

  setName();

  /// Asagida ?? false ifadesini eklemezsen hata aliriz. Her ne kadar yourName
  /// degiskeninin degerine atama yapsak da dart'in anlamasi icin karmasik bir yapi.
  /// Asagidakinin yerine yourName.contains('John')! ifadesini de kullanabilirdik.
  /// Fakat asagidaki daha guvenli bir yaklasim!
  if (yourName?.contains('John') ?? false) {
    print('✋ Hello, $yourName!');
  }
}
