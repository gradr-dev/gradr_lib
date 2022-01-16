import 'package:gradr_lib/src/enums/climbing_style.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';

class GradeSystem {
  final String code;
  final String name;
  final String country;
  final ClimbingStyle climbingStyle;
  final List<Grade> grades;

  GradeSystem({
    required this.code,
    required this.name,
    required this.country,
    required this.climbingStyle,
    this.grades = const [],
  });

  List<Grade> gradesByBand(GradeBand band) {
    return grades
        .where(
          (element) => element.gradeBand == band,
        )
        .toList();
  }

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
