// Define the vscale grading system
import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/climbing_style.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';
import 'package:gradr_lib/src/tools/grade_system_detector.dart';

final begginerVermin = [
  Grade(
    name: 'VB-',
    difficultyRange: DifficultyRange(min: 0, max: 6),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: 'VB',
    difficultyRange: DifficultyRange(min: 6, max: 12),
    gradeBand: GradeBand.begginer,
  ),
  Grade(
    name: 'VB+',
    difficultyRange: DifficultyRange(min: 12, max: 18),
    gradeBand: GradeBand.begginer,
  ),
];

final intermediateVermin = [
  Grade(
    name: 'V0-',
    difficultyRange: DifficultyRange(min: 18, max: 24),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: 'V0',
    difficultyRange: DifficultyRange(min: 24, max: 30),
    gradeBand: GradeBand.intermediate,
  ),
  Grade(
    name: 'V0+',
    difficultyRange: DifficultyRange(min: 30, max: 36),
    gradeBand: GradeBand.intermediate,
  ),
];

final experiencedVermin = [
  Grade(
    name: 'V1',
    difficultyRange: DifficultyRange(min: 36, max: 40.5),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V2',
    difficultyRange: DifficultyRange(min: 40.5, max: 45),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V3',
    difficultyRange: DifficultyRange(min: 45, max: 51),
    gradeBand: GradeBand.experienced,
  ),
  Grade(
    name: 'V4',
    difficultyRange: DifficultyRange(min: 51, max: 54),
    gradeBand: GradeBand.experienced,
  ),
];

final expertVermin = [
  Grade(
    name: 'V5',
    difficultyRange: DifficultyRange(min: 54, max: 57),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V6',
    difficultyRange: DifficultyRange(min: 57, max: 60),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V7',
    difficultyRange: DifficultyRange(min: 60, max: 63),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V8',
    difficultyRange: DifficultyRange(min: 63, max: 66),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V9',
    difficultyRange: DifficultyRange(min: 66, max: 69),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V10',
    difficultyRange: DifficultyRange(min: 69, max: 72),
    gradeBand: GradeBand.expert,
  ),
];

final eliteVermin = [
  Grade(
    name: 'V11',
    difficultyRange: DifficultyRange(min: 72, max: 74.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V12',
    difficultyRange: DifficultyRange(min: 74.25, max: 76.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V13',
    difficultyRange: DifficultyRange(min: 76.5, max: 78.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V14',
    difficultyRange: DifficultyRange(min: 78.75, max: 81),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V15',
    difficultyRange: DifficultyRange(min: 81, max: 83.25),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V16',
    difficultyRange: DifficultyRange(min: 83.25, max: 85.5),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V17',
    difficultyRange: DifficultyRange(min: 85.5, max: 87.75),
    gradeBand: GradeBand.expert,
  ),
  Grade(
    name: 'V18',
    difficultyRange: DifficultyRange(min: 87.75, max: 90),
    gradeBand: GradeBand.expert,
  ),
];

final verminGradeSystem = GradeSystem(
  code: 'BLDV',
  name: 'Bouldering Vermin V-scale',
  country: 'USA',
  climbingStyle: ClimbingStyle.boulder,
  grades: [
    ...begginerVermin,
    ...intermediateVermin,
    ...experiencedVermin,
    ...expertVermin,
    ...eliteVermin,
  ],
);

class VScaleGradeDetector extends RegExpDetector {
  VScaleGradeDetector()
      : super(
          system: verminGradeSystem,
          regexp: RegExp(
            r'^v(b?|\d+)[+-]?$',
            caseSensitive: false,
          ),
        );
}
