void main(List<String> args) {
  final tuple = Tuple(1, 2);
  print(tuple);

  final swapped = tuple.swap();
  print(swapped);

  print(tuple.addNumbers());

  // final tupleS = Tuple('df', 3.3);

  /// Asagidaki kod hata verecektir cunku addNumbers metodunu yalnizca sayisal
  /// degerler iceren tuple icin hazirladik!
  /// tupleS.addNumbers();
}

class Tuple<L, R> {
  final L left;
  final R right;

  Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple, leff = $left, right = $right';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() {
    return Tuple(right, left);
  }
}

typedef NumTuple = Tuple<num, num>;

extension on NumTuple {
  num addNumbers() => left + right;
}
