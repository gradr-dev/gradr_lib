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

final intermediateBandGrades = [
  Grade(
    name: '3',
    intensity: 18,
    difficultyRange: DifficultyRange(min: 18, max: 24),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: '4',
    intensity: 19,
    difficultyRange: DifficultyRange(min: 24, max: 30),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: '4+',
    intensity: 20,
    difficultyRange: DifficultyRange(min: 30, max: 36),
    gradeBand: GradeBand.intermediate,
  ),
];

final experiencedBandGrades = [
  Grade(
    name: '5',
    intensity: 21,
    difficultyRange: DifficultyRange(min: 36, max: 39),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: '5+',
    intensity: 22,
    difficultyRange: DifficultyRange(min: 39, max: 42),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: '6A',
    intensity: 23,
    difficultyRange: DifficultyRange(min: 42, max: 45),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: '6A+',
    intensity: 24,
    difficultyRange: DifficultyRange(min: 45, max: 47),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: '6B',
    intensity: 25,
    difficultyRange: DifficultyRange(min: 47, max: 50),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: '6B+',
    intensity: 26,
    difficultyRange: DifficultyRange(min: 50, max: 54),
    gradeBand: GradeBand.experienced,
  ),
];

final expertBandGrades = [
  Grade(
    name: '6C',
    intensity: 10,
    difficultyRange: DifficultyRange(min: 54, max: 56.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '6C+',
    intensity: 11,
    difficultyRange: DifficultyRange(min: 56.25, max: 58.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7A',
    intensity: 12,
    difficultyRange: DifficultyRange(min: 58.5, max: 60.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7A+',
    intensity: 13,
    difficultyRange: DifficultyRange(min: 60.25, max: 62.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7B',
    intensity: 14,
    difficultyRange: DifficultyRange(min: 62.5, max: 64.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7B+',
    intensity: 15,
    difficultyRange: DifficultyRange(min: 64.75, max: 67),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7C',
    intensity: 15,
    difficultyRange: DifficultyRange(min: 67, max: 69.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '7C+',
    intensity: 15,
    difficultyRange: DifficultyRange(min: 69.25, max: 72.5),
    gradeBand: GradeBand.expert,
  ),
];

final eliteBandGrades = [
  Grade(
    name: '8A',
    intensity: 16,
    difficultyRange: DifficultyRange(min: 72, max: 74.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '8A+',
    intensity: 17,
    difficultyRange: DifficultyRange(min: 74.25, max: 76.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '8B',
    intensity: 18,
    difficultyRange: DifficultyRange(min: 76.5, max: 78.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '8B+',
    intensity: 19,
    difficultyRange: DifficultyRange(min: 78.75, max: 81),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '8C',
    intensity: 20,
    difficultyRange: DifficultyRange(min: 81, max: 83.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '8C+',
    intensity: 21,
    difficultyRange: DifficultyRange(min: 83.25, max: 85.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '9A',
    intensity: 22,
    difficultyRange: DifficultyRange(min: 85.5, max: 87.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: '9A+',
    intensity: 23,
    difficultyRange: DifficultyRange(min: 87.75, max: 90),
    gradeBand: GradeBand.expert,
  ),
];

var fontGradeSystem = GradeSystem(
  code: 'FB',
  name: 'Fontainbleu Bouldering',
  country: 'FRANCE',
  climbingStyle: ClimbingStyle.boulder,
  grades: [
    ...begginnerBandGrades,
    ...intermediateBandGrades,
    ...experiencedBandGrades,
    ...expertBandGrades,
    ...eliteBandGrades,
  ],
);
