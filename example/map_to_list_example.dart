import 'package:map_to_list/map_to_list.dart';

void main() {
  final list = [1, 2, 3, 4, 5];
  final squared = list.mapToList((value) => value * value);

  print('Original: $list');
  print('Squared: $squared');
}
