Future<void> main(List<String> args) async {
  print(await getName());
  print(await getPhoneNumber());
  print(await getAddress());
  print(await getCity());
}

Future<String> getName() async => 'John Doe';
Future<String> getAddress() => Future.value('123 Main Street');

Future<String> getPhoneNumber() => Future.delayed(
      Duration(seconds: 1),
      () => '555-555-55',
    );

Future<String> getCity() async {
  await Future.delayed(Duration(seconds: 1));
  return 'New York';
}

// async keyword doesn't really contribute anything here
Future<String> getZipCode() async {
  return Future.delayed(
    Duration(seconds: 1),
    () => '12345',
  );
}
