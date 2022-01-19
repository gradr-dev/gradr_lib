import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';

class Grade {
  final num intensity;
  final String name;
  final DifficultyRange difficultyRange;
  final GradeBand gradeBand;

  Grade({
    required this.name,
    required this.intensity,
    required this.difficultyRange,
    required this.gradeBand,
  });

  @override
  String toString() {
    return 'Grade($name) -> $gradeBand | $difficultyRange';
  }

  factory Grade.fromJson(Map<String, dynamic> data) {
    return Grade(
      name: data['name'],
      intensity: data['intensity'],
      difficultyRange: DifficultyRange.fromJson(data['difficulty_range']),
      gradeBand: data['grade_band'],
    );
  }
}
