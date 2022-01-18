import 'package:flutter_test/flutter_test.dart';
import 'package:gradr_lib/grading_systems/boulder/font_scale.dart';
import 'package:gradr_lib/grading_systems/boulder/vermin_scale.dart';
import 'package:gradr_lib/src/tools/grade_system_detector.dart';

void main() {
  final verminDetector = VScaleGradeDetector();
  final fontDetector = FontGradeDetector();

  final detector = GradeSystemDetector(
    detectors: [
      verminDetector,
      fontDetector,
    ],
  );

  test('GradeSystemDetector detects', () {
    var t1 = detector.detect('9a');
    var t2 = detector.detect('9b');

    expect(t1.detectedSystems, [fontDetector.system]);
    expect(t2.detectedSystems, [fontDetector.system]);

    expect(detector.detect('9c+').detectedSystems, [fontDetector.system]);
    expect(detector.detect('4a+').detectedSystems, [fontDetector.system]);

    expect(detector.detect('v10').detectedSystems, [verminDetector.system]);
    expect(detector.detect('vB-').detectedSystems, [verminDetector.system]);
    expect(detector.detect('vB+').detectedSystems, [verminDetector.system]);
    expect(detector.detect('v0').detectedSystems, [verminDetector.system]);
    expect(detector.detect('v0+').detectedSystems, [verminDetector.system]);
    expect(detector.detect('v0-').detectedSystems, [verminDetector.system]);
  });
}