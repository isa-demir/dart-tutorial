void main(List<String> args) {
  print([1, 2, 3, 1].containsDuplicate());
}

extension ContainDuplicate on Iterable {
  bool containsDuplicate() => toSet().length != length;
}
