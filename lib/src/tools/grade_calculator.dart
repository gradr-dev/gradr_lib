import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';

/// This class allows you to create calculators/converters between 2 different grading systems.
///
/// **Usage**
/// ```dart
/// final vToFont = GradeCalculator(
///   systemA: verminGradeSystem,
///   systemB: fontGradeSystem,
/// );
///
/// vToFont.atob(
///    vScale.findByName('V3')
/// );
///```
class GradeCalculator {
  final GradeSystem systemA;
  final GradeSystem systemB;

  GradeCalculator({
    required this.systemA,
    required this.systemB,
  });

  /// Convert from [GradeSystem] A to [GradeSystem] B
  List<Grade> atob(Grade? a) {
    return convert(a, systemB);
  }

  /// Convert from [GradeSystem] B to [GradeSystem] A
  List<Grade> btoa(Grade? b) {
    return convert(b, systemA);
  }

  /// Convert a grade to a [GradeSystem]
  static List<Grade> convert(Grade? grade, GradeSystem system) {
    if (grade == null || system.isEmpty) return [];

    var range = grade.difficultyRange;
    var bandGrades = system.gradesByBand(grade.gradeBand);

    var matchingGrades = bandGrades
        .where(
          (g2) => g2.difficultyRange.inRangeOf(range),
        )
        .toList();

    if (matchingGrades.isEmpty) {
      var recordGrade = getClosest(bandGrades, range);
      if (recordGrade != null) matchingGrades.add(recordGrade);
    }

    return matchingGrades;
  }

  /// Get's the closest grade for a specific [DifficultyRange] from the supplied [grades] list.
  static Grade? getClosest(List<Grade> grades, DifficultyRange range) {
    var recordDiff = double.infinity;
    Grade? recordGrade;

    for (var grade in grades) {
      var diff = (grade.difficultyRange.max - range.max).abs();

      if (diff < recordDiff) {
        recordGrade = grade;
        recordDiff = diff;
      }
    }

    return recordGrade;
  }
}

/// Another interface for creating a [GradeCalculator]
class GradeCalculatorBuilder {
  final GradeSystem system;
  final String input;

  GradeCalculatorBuilder({
    required this.system,
    required this.input,
  });

  to(GradeSystem otherSystem) {
    return GradeCalculator(
      systemA: system,
      systemB: otherSystem,
    ).atob(
      system.findByName(input),
    );
  }

  from(GradeSystem otherSystem) {
    return GradeCalculator(
      systemA: system,
      systemB: otherSystem,
    ).btoa(
      otherSystem.findByName(input),
    );
  }
}
