// Define the vscale grading system
import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/climbing_style.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';

final begginerBandGrades = [
  Grade(
    name: 'VB-',
    intensity: 0,
    difficultyRange: DifficultyRange(min: 0, max: 6),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: 'VB',
    intensity: 1,
    difficultyRange: DifficultyRange(min: 6, max: 12),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: 'VB+',
    intensity: 2,
    difficultyRange: DifficultyRange(min: 12, max: 18),
    gradeBand: GradeBand.begginer,
  ),
];

var verminGradeSystem = GradeSystem(
  code: 'BLDV',
  name: 'Bouldering Vermin V-scale',
  country: 'USA',
  climbingStyle: ClimbingStyle.boulder,
  grades: [
    ...begginerBandGrades,
  ],
);
