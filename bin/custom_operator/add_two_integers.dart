void main(List<String> args) {
  print(addTwo(null, null));
}

int addTwo(int? a, int? b) {
  final res = a + b;
  return res;
}

// extension OptionalAdd on int? {
//   int operator +(int? other) {
//     if (this == null && other != null) {
//       return other;
//     } else if (this != null && other == null) {
//       return this!;
//     } else if (this == null && other == null) {
//       return 0;
//     } else {
//       return this! + other!;
//     }
//   }
// }

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    final shadow = this;
    if (shadow == null && other != null) {
      return other;
    } else if (shadow != null && other == null) {
      return shadow;
    } else if (shadow == null && other == null) {
      return 0 as T;
    } else {
      return shadow + other as T;
    }
  }
}
