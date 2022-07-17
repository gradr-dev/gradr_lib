/// Define the YDS grading system.
///
/// Based scale on:
/// https://climber.org/data/decimal.html
/// https://thereaderwiki.com/en/Yosemite_decimal_system

import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';
import 'package:gradr_lib/src/tools/grade_system_detector.dart';

final begginnerYds = [
  Grade.begginer(
    name: '5.1',
    difficultyRange: DifficultyRange(min: 0, max: 2),
  ),
  Grade.begginer(
    name: '5.2',
    difficultyRange: DifficultyRange(min: 2, max: 4),
  ),
  Grade.begginer(
    name: '5.3',
    difficultyRange: DifficultyRange(min: 4, max: 6),
  ),
  Grade.begginer(
    name: '5.4',
    difficultyRange: DifficultyRange(min: 6, max: 8),
  ),
  Grade.begginer(
    name: '5.5',
    difficultyRange: DifficultyRange(min: 8, max: 10),
  ),
  Grade.begginer(
    name: '5.6',
    difficultyRange: DifficultyRange(min: 10, max: 12),
  ),
  Grade.begginer(
    name: '5.7',
    difficultyRange: DifficultyRange(min: 12, max: 13),
  ),
  Grade.begginer(
    name: '5.8',
    difficultyRange: DifficultyRange(min: 13, max: 14),
  ),
  Grade.begginer(
    name: '5.9',
    difficultyRange: DifficultyRange(min: 14, max: 16),
  ),
];

final intermediateYds = [
  Grade.intermediate(
    name: '5.10a',
    difficultyRange: DifficultyRange(min: 16, max: 20.5),
  ),
  Grade.intermediate(
    name: '5.10b',
    difficultyRange: DifficultyRange(min: 20.5, max: 25),
  ),
  Grade.intermediate(
    name: '5.10c',
    difficultyRange: DifficultyRange(min: 25, max: 29.5),
  ),
  Grade.intermediate(
    name: '5.10d',
    difficultyRange: DifficultyRange(min: 29.5, max: 34),
  ),
];

final experiencedYds = [
  Grade.experienced(
    name: '5.11a',
    difficultyRange: DifficultyRange(min: 34, max: 37.6),
  ),
  Grade.experienced(
    name: '5.11b',
    difficultyRange: DifficultyRange(min: 37.6, max: 41.2),
  ),
  Grade.experienced(
    name: '5.11c',
    difficultyRange: DifficultyRange(min: 41.2, max: 44.8),
  ),
  Grade.experienced(
    name: '5.11d',
    difficultyRange: DifficultyRange(min: 44.8, max: 48.4),
  ),
  Grade.experienced(
    name: '5.12a',
    difficultyRange: DifficultyRange(min: 48.4, max: 52),
  ),
];

final expertYds = [
  Grade.expert(
    name: '5.12b',
    difficultyRange: DifficultyRange(min: 52, max: 54.5),
  ),
  Grade.expert(
    name: '5.12c',
    difficultyRange: DifficultyRange(min: 54.5, max: 57),
  ),
  Grade.expert(
    name: '5.12d',
    difficultyRange: DifficultyRange(min: 57, max: 59.5),
  ),
  Grade.expert(
    name: '5.13a',
    difficultyRange: DifficultyRange(min: 59.5, max: 62),
  ),
  Grade.expert(
    name: '5.13b',
    difficultyRange: DifficultyRange(min: 62, max: 64.5),
  ),
  Grade.expert(
    name: '5.13c',
    difficultyRange: DifficultyRange(min: 64.5, max: 67),
  ),
  Grade.expert(
    name: '5.13d',
    difficultyRange: DifficultyRange(min: 67, max: 70),
  ),
];

final eliteYds = [
  Grade.elite(
    name: '5.14a',
    difficultyRange: DifficultyRange(min: 70, max: 72.25),
  ),
  Grade.elite(
    name: '5.14b',
    difficultyRange: DifficultyRange(min: 72.25, max: 74.5),
  ),
  Grade.elite(
    name: '5.14c',
    difficultyRange: DifficultyRange(min: 74.5, max: 76.75),
  ),
  Grade.elite(
    name: '5.15a',
    difficultyRange: DifficultyRange(min: 76.75, max: 79),
  ),
  Grade.elite(
    name: '5.15b',
    difficultyRange: DifficultyRange(min: 79, max: 81.25),
  ),
  Grade.elite(
    name: '5.15c',
    difficultyRange: DifficultyRange(min: 81.25, max: 83.5),
  ),
  Grade.elite(
    name: '5.15d',
    difficultyRange: DifficultyRange(min: 83.5, max: 85.75),
  ),
  Grade.elite(
    name: '5.16a',
    difficultyRange: DifficultyRange(min: 85.75, max: 88),
  ),
];

final ydsGradeSystem = GradeSystem.sport(
  code: 'YDS',
  name: 'Yosemite Decimal System',
  country: 'USA',
  grades: [
    ...begginnerYds,
    ...intermediateYds,
    ...experiencedYds,
    ...expertYds,
    ...eliteYds,
  ],
);

class YdsGradeDetector extends RegExpDetector {
  YdsGradeDetector()
      : super(
          system: ydsGradeSystem,
          regexp: RegExp(
            r'^(5\.[0-9]$)|(5\.1[0-9]+[abcd])$',
            caseSensitive: false,
          ),
        );
}
