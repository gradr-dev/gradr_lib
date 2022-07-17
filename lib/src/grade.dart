import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';

/// This class represents a Grade, it's system agnostic,
/// all grading systems use this class to represent it's grades
class Grade {
  /// The name/identifier for this grade
  /// IE: 6a+, v12, 5.12D, etc...
  final String name;

  /// Range of difficulty for this grade
  final DifficultyRange difficultyRange;

  /// The grade band this grade belongs to
  /// Take a look at the [GradeBand] enum to see the available options
  final GradeBand gradeBand;

  Grade({
    required this.name,
    required this.difficultyRange,
    required this.gradeBand,
  });

  Grade.begginer({
    required this.name,
    required this.difficultyRange,
  }) : gradeBand = GradeBand.begginer;

  Grade.intermediate({
    required this.name,
    required this.difficultyRange,
  }) : gradeBand = GradeBand.intermediate;

  Grade.experienced({
    required this.name,
    required this.difficultyRange,
  }) : gradeBand = GradeBand.experienced;

  Grade.expert({
    required this.name,
    required this.difficultyRange,
  }) : gradeBand = GradeBand.expert;

  Grade.elite({
    required this.name,
    required this.difficultyRange,
  }) : gradeBand = GradeBand.elite;

  @override
  String toString() {
    return 'Grade($name) -> $gradeBand | $difficultyRange';
  }

  /// Factory to instantiate a [Grade] from JSON
  factory Grade.fromJson(Map<String, dynamic> data) {
    return Grade(
      name: data['name'],
      difficultyRange: DifficultyRange.fromJson(data['difficulty_range']),
      gradeBand: data['grade_band'],
    );
  }
}
