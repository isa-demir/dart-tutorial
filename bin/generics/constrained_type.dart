void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherAndSisterAndMyFish = {
    'Brother': Person(),
    'Sister': Person(),
    'Fishy': Fish(),
  };

  final allValues = [
    momAndDad,
    brotherAndSisterAndMyFish,
  ];

  describe(allValues);
}

typedef BreatheThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreatheThings> maps) {
  for (var element in maps) {
    for (var key in element.values) {
      key.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();
  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
