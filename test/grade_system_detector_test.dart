import 'package:flutter_test/flutter_test.dart';
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
    expect(detector.detect('9a').detectedSystems, [fontDetector.system]);
    expect(detector.detect('9b').detectedSystems, [fontDetector.system]);
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
