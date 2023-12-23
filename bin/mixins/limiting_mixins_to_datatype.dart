// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  /// CanRun mixini'ni asagidaki tipe sinirlasak da dogrudan o tipin kullanimi
  /// yoktur. Yalnizca o tipden miras alan siniflar kullanabilir.
  // Has2Feet().run();

  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

/// CanRun mixini yalnizca ve yalnizca Has2Feet ile extend edilmis veri
/// tiplerinde uygulanabilir.
mixin CanRun on Has2Feet {
  void run() {
    print('$runtimeType is running!');
  }
}

class Human extends Has2Feet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}

/// Fish sinifi Has2Fett sinifindan extend edilmedigi icin CanRun kullanilamaz!
// class Fish extends HasNoFeet with CanRun {} //hata

/// Dog sinifi Has2Fett sinifindan extend edilmedigi icin CanRun kullanilamaz!
// class Dog with CanRun {} //hata
