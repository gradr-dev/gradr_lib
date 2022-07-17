// Define the vscale grading system
import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';
import 'package:gradr_lib/src/tools/grade_system_detector.dart';

final begginnerFont = [
  Grade.begginer(
    name: '1A',
    difficultyRange: DifficultyRange(min: 0, max: 1),
  ),
  Grade.begginer(
    name: '1A+',
    difficultyRange: DifficultyRange(min: 1, max: 2),
  ),
  Grade.begginer(
    name: '1B',
    difficultyRange: DifficultyRange(min: 2, max: 3),
  ),
  Grade.begginer(
    name: '1B+',
    difficultyRange: DifficultyRange(min: 3, max: 4),
  ),
  Grade.begginer(
    name: '1C',
    difficultyRange: DifficultyRange(min: 4, max: 5),
  ),
  Grade.begginer(
    name: '1C+',
    difficultyRange: DifficultyRange(min: 5, max: 6),
  ),

  //
  Grade.begginer(
    name: '2A',
    difficultyRange: DifficultyRange(min: 6, max: 7),
  ),
  Grade.begginer(
    name: '2A+',
    difficultyRange: DifficultyRange(min: 7, max: 8),
  ),
  Grade.begginer(
    name: '2B',
    difficultyRange: DifficultyRange(min: 8, max: 9),
  ),
  Grade.begginer(
    name: '2B+',
    difficultyRange: DifficultyRange(min: 9, max: 10),
  ),
  Grade.begginer(
    name: '2C',
    difficultyRange: DifficultyRange(min: 10, max: 11),
  ),
  Grade.begginer(
    name: '2C+',
    difficultyRange: DifficultyRange(min: 11, max: 12),
  ),

  //
  Grade.begginer(
    name: '3A',
    difficultyRange: DifficultyRange.single(12),
  ),
  Grade.begginer(
    name: '3A+',
    difficultyRange: DifficultyRange.single(13),
  ),
  Grade.begginer(
    name: '3B',
    difficultyRange: DifficultyRange.single(14),
  ),
  Grade.begginer(
    name: '3B+',
    difficultyRange: DifficultyRange.single(15),
  ),
  Grade.begginer(
    name: '3C',
    difficultyRange: DifficultyRange.single(16),
  ),
  Grade.begginer(
    name: '3C+',
    difficultyRange: DifficultyRange.single(17),
  ),
];

final intermediateFont = [
  Grade.intermediate(
    name: '3',
    difficultyRange: DifficultyRange(min: 18, max: 24),
  ),
  Grade.intermediate(
    name: '4',
    difficultyRange: DifficultyRange(min: 24, max: 30),
  ),
  Grade.intermediate(
    name: '4+',
    difficultyRange: DifficultyRange(min: 30, max: 36),
  ),
];

final experiencedFont = [
  Grade.experienced(
    name: '5',
    difficultyRange: DifficultyRange(min: 36, max: 39),
  ),
  Grade.experienced(
    name: '5+',
    difficultyRange: DifficultyRange(min: 39, max: 42),
  ),
  Grade.experienced(
    name: '6A',
    difficultyRange: DifficultyRange(min: 42, max: 45),
  ),
  Grade.experienced(
    name: '6A+',
    difficultyRange: DifficultyRange(min: 45, max: 48),
  ),
  Grade.experienced(
    name: '6B',
    difficultyRange: DifficultyRange(min: 48, max: 51),
  ),
  Grade.experienced(
    name: '6B+',
    difficultyRange: DifficultyRange(min: 51, max: 54),
  ),
];

final expertFont = [
  Grade.expert(
    name: '6C',
    difficultyRange: DifficultyRange(min: 54, max: 56.25),
  ),
  Grade.expert(
    name: '6C+',
    difficultyRange: DifficultyRange(min: 56.25, max: 58.5),
  ),
  Grade.expert(
    name: '7A',
    difficultyRange: DifficultyRange(min: 58.5, max: 60.25),
  ),
  Grade.expert(
    name: '7A+',
    difficultyRange: DifficultyRange(min: 60.25, max: 62.5),
  ),
  Grade.expert(
    name: '7B',
    difficultyRange: DifficultyRange(min: 62.5, max: 64.75),
  ),
  Grade.expert(
    name: '7B+',
    difficultyRange: DifficultyRange(min: 64.75, max: 67),
  ),
  Grade.expert(
    name: '7C',
    difficultyRange: DifficultyRange(min: 67, max: 69.25),
  ),
  Grade.expert(
    name: '7C+',
    difficultyRange: DifficultyRange(min: 69.25, max: 72.5),
  ),
];

final eliteFont = [
  Grade.elite(
    name: '8A',
    difficultyRange: DifficultyRange(min: 72, max: 74.25),
  ),
  Grade.elite(
    name: '8A+',
    difficultyRange: DifficultyRange(min: 74.25, max: 76.5),
  ),
  Grade.elite(
    name: '8B',
    difficultyRange: DifficultyRange(min: 76.5, max: 78.75),
  ),
  Grade.elite(
    name: '8B+',
    difficultyRange: DifficultyRange(min: 78.75, max: 81),
  ),
  Grade.elite(
    name: '8C',
    difficultyRange: DifficultyRange(min: 81, max: 83.25),
  ),
  Grade.elite(
    name: '8C+',
    difficultyRange: DifficultyRange(min: 83.25, max: 85.5),
  ),
  Grade.elite(
    name: '9A',
    difficultyRange: DifficultyRange(min: 85.5, max: 87.75),
  ),
  Grade.elite(
    name: '9A+',
    difficultyRange: DifficultyRange(min: 87.75, max: 90),
  ),
];

final fontGradeSystem = GradeSystem.boulder(
  code: 'FB',
  name: 'Fontainbleu Bouldering',
  country: 'FRANCE',
  grades: [
    ...begginnerFont,
    ...intermediateFont,
    ...experiencedFont,
    ...expertFont,
    ...eliteFont,
  ],
);

class FontGradeDetector extends RegExpDetector {
  FontGradeDetector()
      : super(
          system: fontGradeSystem,
          regexp: RegExp(
            r'^(\d)([abc]?)[+-]?$',
            caseSensitive: false,
          ),
        );
}
