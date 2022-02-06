import 'package:gradr_lib/src/difficulty_range.dart';
import 'package:gradr_lib/src/enums/grade_band.dart';
import 'package:gradr_lib/src/grade.dart';
import 'package:gradr_lib/src/grade_system.dart';

// TODO: Think of a way of "scoring" results when there are collisions (ie: french sport and boulder),
// it would be cool to tell the user something like: "It can be French Sport or French Boulder,
// but higher probability of being sport"

/// Interface to create custom detectors for a particular grading system
abstract class GradeDetector {
  final GradeSystem system;

  GradeDetector(this.system);

  bool detect(String grade);
}

/// Interface to create custom detectors for a particular grading system that use RegExp
abstract class RegExpDetector extends GradeDetector {
  final RegExp regexp;

  RegExpDetector({
    required GradeSystem system,
    required this.regexp,
  }) : super(system);

  @override
  bool detect(String grade) {
    return regexp.hasMatch(grade);
  }
}

/// Result for a GradeSystemDetector detection
class GradeDetectorResult {
  /// The original input used to generate this result
  final String originalInput;

  /// List of "formaliazed"/gradr grades
  final List<Grade> formalizedGrades = [];

  /// List of grading systems that match the input
  final List<GradeSystem> detectedSystems = [];

  GradeDetectorResult({
    required this.originalInput,
  });
}

/// Tool for detecting grading systems. A list of [GradeDetector] objects must be supplied.
///
/// Custom detectors can also be created and passed in.
class GradeSystemDetector {
  /// List of detectors this [GradeSystemDetector] detects.
  final List<GradeDetector> detectors;

  GradeSystemDetector({
    required this.detectors,
  });

  /// Loops over all the detectors and returns a [GradeDetectorResult].
  GradeDetectorResult detect(String grade) {
    var result = GradeDetectorResult(
      originalInput: grade,
    );

    for (var detector in detectors) {
      if (detector.detect(grade)) {
        result.detectedSystems.add(detector.system);

        var formalizedGrade = detector.system.findByName(grade);

        if (formalizedGrade != null) {
          result.formalizedGrades.add(formalizedGrade);
        } else {
          result.formalizedGrades.add(
            Grade(
              name: grade,
              difficultyRange: DifficultyRange.single(-1),
              gradeBand: GradeBand.uknown,
            ),
          );
        }
      }
    }

    return result;
  }
}
