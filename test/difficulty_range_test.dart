import 'package:flutter_test/flutter_test.dart';
import 'package:gradr_lib/src/difficulty_range.dart';

void main() {
  test('dsasdsadda', () {
    var d1 = DifficultyRange(min: 45, max: 49.5);
    var d2 = DifficultyRange(min: 47, max: 50);

    print(d1);
    print(d2);
    print(
      d2.inRangeOf(d1),
    );
  });

  test('dsasdsadda', () {
    var d2 = DifficultyRange(min: 45.0, max: 48.0);
    var d3 = DifficultyRange(min: 48.0, max: 51.0);

    var d4 = DifficultyRange(min: 45, max: 49.5);

    // expect(d2.inRangeOf(d4), true);
    expect(d3.inRangeOf(d4), true);
  });
}
