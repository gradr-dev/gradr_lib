/// Defines a range of difficulty, it has a [min] difficulty and a [max] difficulty.
/// Each [Grade] must define one to be able to convert from one grading system to another
class DifficultyRange {
  final double min;
  final double max;

  DifficultyRange({
    required this.min,
    required this.max,
  });

  DifficultyRange.single(this.min) : max = min + 1;

  /// Checks if a [DifficultyRange] is in range of this [DifficultyRange]
  bool inRangeOf(DifficultyRange b) {
    // // 45, max: 49.5
    // // 47, max: 50
    // var av = max - min;
    // var bv = b.max - b.min;
    // print('$av - $bv');

    return min >= b.min && max <= b.max;
  }

  @override
  String toString() {
    return 'DifficultyRange(min: $min, max: $max)';
  }

  /// Factory to instantiate a [DifficultyRange] from JSON
  factory DifficultyRange.fromJson(Map<String, dynamic> data) {
    return DifficultyRange(
      min: data['min'] ?? 0,
      max: data['max'] ?? 0,
    );
  }
}
