void main(List<String> args) {
  //extract all the chracters which is not a, b, c
  String word = 'abracadabra';
  var resultSet = {
    for (final char in word.split(''))
      if (!'abc'.contains(char)) char
  };
  print(resultSet);
  print('-------------------');

  final allNumber = Iterable.generate(100);
  final List<int> evenNumbers = [
    for (final number in allNumber)
      if (number % 2 == 0) number
  ];
  print(evenNumbers);
  print('-------------------');

  final names = [
    'jes',
    'sally',
    'nathan',
  ];

  final namesAndLength = {
    for (final name in names) name: name.length,
  };
  print(namesAndLength);
}
