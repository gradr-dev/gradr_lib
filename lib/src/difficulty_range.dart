class DifficultyRange {
  final double min;
  final double max;

  DifficultyRange({
    required this.min,
    required this.max,
  });

  DifficultyRange.single(this.min) : max = min + 1;

  bool inRangeOf(DifficultyRange b) {
    return min >= b.min && max <= b.max;
  }

  factory DifficultyRange.fromJson(Map<String, dynamic> data) {
    return DifficultyRange(
      min: data['min'] ?? 0,
      max: data['max'] ?? 0,
    );
  }
}
