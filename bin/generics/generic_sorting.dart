void main(List<String> args) {
  sort(ascending: true);
  sort(ascending: false);
}

const ages = [100, 20, 10, 90, 40];
const names = ['Foo', 'Bar', 'Baz'];
const distances = [3.1, 10.2, 1.3, 4.2];

/// * a negative integer if [a] is smaller than [b],
/// * zero if [a] is equal to [b], and
/// * a positive integer if [a] is greater than [b].
int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThen<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThen;

  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...distances]..sort(comparator));
}
