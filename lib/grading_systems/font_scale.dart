// Define the vscale grading system
import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/climbing_style.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';

final begginnerBandGrades = [
  Grade(
    name: '1A',
    intensity: 0,
    difficultyRange: DifficultyRange(min: 0, max: 1),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '1A+',
    intensity: 1,
    difficultyRange: DifficultyRange(min: 1, max: 2),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '1B',
    intensity: 2,
    difficultyRange: DifficultyRange(min: 2, max: 3),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '1B+',
    intensity: 3,
    difficultyRange: DifficultyRange(min: 3, max: 4),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '1C',
    intensity: 4,
    difficultyRange: DifficultyRange(min: 4, max: 5),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '1C+',
    intensity: 5,
    difficultyRange: DifficultyRange(min: 5, max: 6),
    gradeBand: GradeBand.begginer,
  ),

  //
  Grade(
    name: '2A',
    intensity: 6,
    difficultyRange: DifficultyRange(min: 6, max: 7),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '2A+',
    intensity: 7,
    difficultyRange: DifficultyRange(min: 7, max: 8),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '2B',
    intensity: 8,
    difficultyRange: DifficultyRange(min: 8, max: 9),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '2B+',
    intensity: 9,
    difficultyRange: DifficultyRange(min: 9, max: 10),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '2C',
    intensity: 10,
    difficultyRange: DifficultyRange(min: 10, max: 11),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '2C+',
    intensity: 11,
    difficultyRange: DifficultyRange(min: 11, max: 12),
    gradeBand: GradeBand.begginer,
  ),

  //
  Grade(
    name: '3A',
    intensity: 12,
    difficultyRange: DifficultyRange.single(12),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '3A+',
    intensity: 13,
    difficultyRange: DifficultyRange.single(13),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '3B',
    intensity: 14,
    difficultyRange: DifficultyRange.single(14),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '3B+',
    intensity: 15,
    difficultyRange: DifficultyRange.single(15),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '3C',
    intensity: 16,
    difficultyRange: DifficultyRange.single(16),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: '3C+',
    intensity: 17,
    difficultyRange: DifficultyRange.single(17),
    gradeBand: GradeBand.begginer,
  ),
];

var fontGradeSystem = GradeSystem(
  code: 'FB',
  name: 'Fontainbleu Bouldering',
  country: 'FRANCE',
  climbingStyle: ClimbingStyle.boulder,
  grades: [
    ...begginnerBandGrades,
  ],
);
