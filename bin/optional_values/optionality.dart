void main(List<String> args) {
  // Dart dilinde opsiyonel verilerin baslangic degeri null'dir.

  String? lastName;
  print(lastName); //null

  lastName ??= 'Demir'; //lastName degiskeni null ise 'Demir'i ata!
  print(lastName); //Demir

  String? name;
  // print(name.length);  /// hata verecektir cunku optional bir deger oldugu icin null,un uzunlugu yoktur!
  print(name?.length);
}
