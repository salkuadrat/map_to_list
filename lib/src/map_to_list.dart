/// Extension on [List] to directly map a list without calling [toList].
extension MapToList<E> on List<E> {
  /// Instead of always explicitly chain [map] and [toList]
  /// when you want to map a [List] into another [List],
  /// you only need to call a single[mapToList].
  /// 
  /// The mapped list is fixed-length if [growable] is false.
  ///
  /// Example:
  ///
  /// final list = [1, 2, 3, 4, 5];
  /// final squared = list.mapToList((value) => value * value);
  ///
  /// print(squared);
  ///
  /// Result:
  ///
  /// [1, 4, 9, 16, 25]
  ///
  List<T> mapToList<T>(
    T Function(E value) toElement, {
    bool growable = true,
  }) {
    return map(toElement).toList(growable: growable);
  }
}
