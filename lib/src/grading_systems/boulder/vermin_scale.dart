// Define the vscale grading system
import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';
import 'package:gradr_lib/src/tools/grade_system_detector.dart';

final begginerVermin = [
  Grade.begginer(
    name: 'VB-',
    difficultyRange: DifficultyRange(min: 0, max: 6),
  ),
  Grade.begginer(
    name: 'VB',
    difficultyRange: DifficultyRange(min: 6, max: 12),
  ),
  Grade.begginer(
    name: 'VB+',
    difficultyRange: DifficultyRange(min: 12, max: 18),
  ),
];

final intermediateVermin = [
  Grade.intermediate(
    name: 'V0-',
    difficultyRange: DifficultyRange(min: 18, max: 24),
  ),
  Grade.intermediate(
    name: 'V0',
    difficultyRange: DifficultyRange(min: 24, max: 30),
  ),
  Grade.intermediate(
    name: 'V0+',
    difficultyRange: DifficultyRange(min: 30, max: 36),
  ),
];

final experiencedVermin = [
  Grade.experienced(
    name: 'V1',
    difficultyRange: DifficultyRange(min: 36, max: 40.5),
  ),
  Grade.experienced(
    name: 'V2',
    difficultyRange: DifficultyRange(min: 40.5, max: 45),
  ),
  Grade.experienced(
    name: 'V3',
    difficultyRange: DifficultyRange(min: 45, max: 51),
  ),
  Grade.experienced(
    name: 'V4',
    difficultyRange: DifficultyRange(min: 51, max: 54),
  ),
];

final expertVermin = [
  Grade.expert(
    name: 'V5',
    difficultyRange: DifficultyRange(min: 54, max: 57),
  ),
  Grade.expert(
    name: 'V6',
    difficultyRange: DifficultyRange(min: 57, max: 60),
  ),
  Grade.expert(
    name: 'V7',
    difficultyRange: DifficultyRange(min: 60, max: 63),
  ),
  Grade.expert(
    name: 'V8',
    difficultyRange: DifficultyRange(min: 63, max: 66),
  ),
  Grade.expert(
    name: 'V9',
    difficultyRange: DifficultyRange(min: 66, max: 69),
  ),
  Grade.expert(
    name: 'V10',
    difficultyRange: DifficultyRange(min: 69, max: 72),
  ),
];

final eliteVermin = [
  Grade.elite(
    name: 'V11',
    difficultyRange: DifficultyRange(min: 72, max: 74.25),
  ),
  Grade.elite(
    name: 'V12',
    difficultyRange: DifficultyRange(min: 74.25, max: 76.5),
  ),
  Grade.elite(
    name: 'V13',
    difficultyRange: DifficultyRange(min: 76.5, max: 78.75),
  ),
  Grade.elite(
    name: 'V14',
    difficultyRange: DifficultyRange(min: 78.75, max: 81),
  ),
  Grade.elite(
    name: 'V15',
    difficultyRange: DifficultyRange(min: 81, max: 83.25),
  ),
  Grade.elite(
    name: 'V16',
    difficultyRange: DifficultyRange(min: 83.25, max: 85.5),
  ),
  Grade.elite(
    name: 'V17',
    difficultyRange: DifficultyRange(min: 85.5, max: 87.75),
  ),
  Grade.elite(
    name: 'V18',
    difficultyRange: DifficultyRange(min: 87.75, max: 90),
  ),
];

final verminGradeSystem = GradeSystem.boulder(
  code: 'BLDV',
  name: 'Bouldering Vermin V-scale',
  country: 'USA',
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
