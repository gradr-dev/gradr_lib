import 'package:flutter_test/flutter_test.dart';
import 'package:gradr_lib/grading_systems/font_scale.dart';
import 'package:gradr_lib/grading_systems/v_scale.dart';
import 'package:gradr_lib/src/tools/grade_calculator.dart';

void main() {
  final vToFontCalculator = GradeCalculator(
    systemA: verminGradeSystem,
    systemB: fontGradeSystem,
  );

  test('GradeCalculator atob', () {
    expect(
      vToFontCalculator.atob(
        verminGradeSystem.grades[0],
      ),
      fontGradeSystem.grades.getRange(0, 6),
    );
  });

  test('GradeCalculator atob missing', () {
    var res = vToFontCalculator.atob(
      verminGradeSystem.grades[2],
    );
    var expected = fontGradeSystem.grades.getRange(12, 18);

    expect(
      res,
      expected,
    );
  });

  test('GradeCalculator btoa', () {
    var res = vToFontCalculator.btoa(
      fontGradeSystem.grades[0],
    );
    expect(
      res,
      verminGradeSystem.grades.getRange(0, 1),
    );
  });
}
