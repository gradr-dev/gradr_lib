import 'package:gradr_lib/src/enums/climbing_style.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/tools/grade_calculator.dart';

/// This class represents a Grading System, ie: VerminScale, FontScale, etc...
/// take a look at the available systems in `/lib/grading_systems`
class GradeSystem {
  /// Short code/abreviation indetifying the grade system
  /// ie: FB, VS
  final String code;

  /// Full name of the system
  /// ie: Font Bouldering Scale
  final String name;

  /// Country of the system
  final String country;

  /// The climbing style of this particular system
  /// ie: boulder, sport, trad, etc...
  final ClimbingStyle climbingStyle;

  /// The list of grades for this system
  final List<Grade> grades;

  bool get isEmpty => grades.isEmpty;
  bool get isNotEmpty => grades.isNotEmpty;

  GradeSystem({
    required this.code,
    required this.name,
    required this.country,
    required this.climbingStyle,
    this.grades = const [],
  });

  GradeSystem.boulder({
    required this.code,
    required this.name,
    required this.country,
    this.grades = const [],
  }) : climbingStyle = ClimbingStyle.boulder;

  GradeSystem.sport({
    required this.code,
    required this.name,
    required this.country,
    this.grades = const [],
  }) : climbingStyle = ClimbingStyle.sport;

  /// Returns the grade for a particular [GradeBand]
  List<Grade> gradesByBand(GradeBand band) {
    return grades
        .where(
          (element) => element.gradeBand == band,
        )
        .toList();
  }

  /// Attemps to find a [Grade] by it's name, otherwise returns `null`
  Grade? findByName(String name) {
    try {
      return grades.firstWhere(
        (grade) => grade.name.toUpperCase() == name.toUpperCase(),
      );
    } catch (e) {
      return null;
    }
  }

  /// Returns a GradeCalculatorBuilder for this particular GradeSystem for a specified input
  ///
  /// This is here to give another way of converting between grading systems
  ///
  /// **Usage**
  /// ```dart
  /// fontGradeSystem.convert('6b').to(verminGradeSystem);
  /// fontGradeSystem.convert('v3').from(verminGradeSystem);
  /// ```
  GradeCalculatorBuilder convert(String input) {
    return GradeCalculatorBuilder(
      input: input,
      system: this,
    );
  }

  /// Factory to instantiate a [GradeSystem] from JSON
  factory GradeSystem.fromJson(Map<String, dynamic> data) {
    return GradeSystem(
      code: data["code"],
      name: data["name"],
      country: data["country"],
      climbingStyle: data["climbingStyle"],
      grades: List.from(data["grades"] ?? []).map((g) => Grade.fromJson(g)).toList(),
    );
  }
}
