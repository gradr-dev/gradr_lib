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

final intermediateBandGrades = [
  Grade(
    name: 'V0-',
    intensity: 3,
    difficultyRange: DifficultyRange(min: 18, max: 34),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: 'V0',
    intensity: 4,
    difficultyRange: DifficultyRange(min: 34, max: 40),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: 'V0+',
    intensity: 5,
    difficultyRange: DifficultyRange(min: 40, max: 46),
    gradeBand: GradeBand.intermediate,
  ),
];

final experiencedBandGrades = [
  Grade(
    name: 'V1',
    intensity: 6,
    difficultyRange: DifficultyRange(min: 46, max: 50.5),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V2',
    intensity: 7,
    difficultyRange: DifficultyRange(min: 50.5, max: 55),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V3',
    intensity: 8,
    difficultyRange: DifficultyRange(min: 55, max: 59.5),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V4',
    intensity: 9,
    difficultyRange: DifficultyRange(min: 59.5, max: 64),
    gradeBand: GradeBand.experienced,
  ),
];

final expertBandGrades = [
  Grade(
    name: 'V5',
    intensity: 10,
    difficultyRange: DifficultyRange(min: 64, max: 67),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V6',
    intensity: 11,
    difficultyRange: DifficultyRange(min: 67, max: 70),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V7',
    intensity: 12,
    difficultyRange: DifficultyRange(min: 70, max: 73),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V8',
    intensity: 13,
    difficultyRange: DifficultyRange(min: 73, max: 76),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V9',
    intensity: 14,
    difficultyRange: DifficultyRange(min: 76, max: 79),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V10',
    intensity: 15,
    difficultyRange: DifficultyRange(min: 79, max: 82),
    gradeBand: GradeBand.expert,
  ),
];

final eliteBandGrades = [
  Grade(
    name: 'V11',
    intensity: 16,
    difficultyRange: DifficultyRange(min: 82, max: 84.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V12',
    intensity: 17,
    difficultyRange: DifficultyRange(min: 84.25, max: 86.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V13',
    intensity: 18,
    difficultyRange: DifficultyRange(min: 86.5, max: 88.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V14',
    intensity: 19,
    difficultyRange: DifficultyRange(min: 88.75, max: 91),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V15',
    intensity: 20,
    difficultyRange: DifficultyRange(min: 91, max: 93.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V16',
    intensity: 21,
    difficultyRange: DifficultyRange(min: 93.25, max: 95.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V17',
    intensity: 22,
    difficultyRange: DifficultyRange(min: 95.5, max: 97.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V18',
    intensity: 23,
    difficultyRange: DifficultyRange(min: 97.75, max: 100),
    gradeBand: GradeBand.expert,
  ),
];


var verminGradeSystem = GradeSystem(
  code: 'BLDV',
  name: 'Bouldering Vermin V-scale',
  country: 'USA',
  climbingStyle: ClimbingStyle.boulder,
  grades: [
    ...begginerBandGrades,
    ...intermediateBandGrades,
    ...experiencedBandGrades,
  ],
);
