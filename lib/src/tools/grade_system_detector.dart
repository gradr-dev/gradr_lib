import 'package:gradr_lib/gradr_lib.dart';
import 'package:gradr_lib/src/grade.dart';

abstract class GradeDetector {
  final GradeSystem system;

  GradeDetector(this.system);

  bool detect(String grade);
}

class VScaleGradeDetector extends GradeDetector {
  VScaleGradeDetector() : super(verminGradeSystem);

  final _verminRegexp = RegExp(
    r'^v(b?|\d+)[+-]?$',
    caseSensitive: false,
  );

  @override
  bool detect(String grade) {
    return _verminRegexp.hasMatch(grade);
  }
}

class FontGradeDetector extends GradeDetector {
  FontGradeDetector() : super(fontGradeSystem);
  final _fontRegexp = RegExp(
    r'^^(\d)([abc])[+-]?$$',
    caseSensitive: false,
  );

  @override
  bool detect(String grade) {
    return _fontRegexp.hasMatch(grade);
  }
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
        }
      }
    }

    return result;
  }
}
