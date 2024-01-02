void main(List<String> args) async {
  // final length = await calculateLength(await getName());
  // print(length);

  final length = await getName().then((value) => calculateLength(value));
  print(length);
}

Future<String> getName() => Future.delayed(
      Duration(seconds: 1),
      () => 'Isa Demir',
    );

Future<int> calculateLength(String value) => Future.delayed(
      Duration(seconds: 1),
      () => value.length,
    );
