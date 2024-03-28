import 'package:map_to_list/map_to_list.dart';
import 'package:test/test.dart';

void main() {
  group('MapToList tests', () {
    List<int> list = [];
    var mapped;

    setUp(() {
      list = [1, 2, 3, 4, 5];
      mapped = list.mapToList((value) => value * value);
    });

    test('Runtime Type Test', () {
      expect(mapped.runtimeType, list.runtimeType);
    });

    test('Length Test', () {
      expect(mapped.length, list.length);
    });
  });
}
