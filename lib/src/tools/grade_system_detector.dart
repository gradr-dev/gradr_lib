import 'package:gradr_lib/gradr_lib.dart';
import 'package:gradr_lib/src/grade.dart';

// TODO: Think of a way of "scoring" results when there are collisions (ie: french sport and boulder),
// it would be cool to tell the user something like: "It can be French Sport or French Boulder,
// but higher probability of being sport"

abstract class GradeDetector {
  final GradeSystem system;

  GradeDetector(this.system);

  bool detect(String grade);
}

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

class FontGradeDetector extends RegExpDetector {
  FontGradeDetector()
      : super(
          system: fontGradeSystem,
          regexp: RegExp(
            r'^(\d)([abc]?)[+-]?$$',
            caseSensitive: false,
          ),
        );
}

class GradeDetectorResult {
  final String originalInput;
  final List<Grade> formalizedGrades = [];
  final List<GradeSystem> detectedSystems = [];

  GradeDetectorResult({
    required this.originalInput,
  });
}

class GradeSystemDetector {
  final List<GradeDetector> detectors;

  GradeSystemDetector({
    required this.detectors,
  });

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
              intensity: -1,
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
