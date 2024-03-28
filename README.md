Extension on List to directly map a list, without calling toList.

## Getting started

Always chaining `map` and `toList` when you want to map a `List` is tiring, especially in a Flutter app development. Most of the time, we know we just want to map our list into another list, not into a lazy `Iterable`. 

This simple extension simplify the process.

## Usage

Add package `map_to_list` into project dependencies:

```bash
dart pub add map_to_list
```

And import the package into your project file:

```dart
import 'package:map_to_list/map_to_list.dart';
```

Then you could call a single `mapToList`:

```dart
final list = [1, 2, 3, 4, 5];
final mapped = list.mapToList((value) => value * value);
```

Instead of always chaining `map` and `toList`:

```dart
final list = [1, 2, 3, 4, 5];
final squared = list.map((value) => value * value).toList();
```

## Additional information

