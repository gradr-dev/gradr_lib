import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';

class GradeCalculator {
  final GradeSystem systemA;
  final GradeSystem systemB;

  GradeCalculator({
    required this.systemA,
    required this.systemB,
  });

  List<Grade> atob(Grade? a) {
    return convert(a, systemB);
  }

  List<Grade> btoa(Grade? b) {
    return convert(b, systemA);
  }

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
