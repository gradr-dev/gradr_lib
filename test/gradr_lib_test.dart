import 'package:flutter_test/flutter_test.dart';
import 'package:gradr_lib/src/grading_systems/main.dart';
import 'package:gradr_lib/src/tools/grade_calculator.dart';

void main() {
  // VerminScale.convert('v3').to(FontScale);
  // FontScale.convert('6b').to(VerminScale);
  // fontGradeSystem.convert('6a').to(verminGradeSystem);

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

  //
  test('v0- is 3 atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('V0-'));
    var expected = fontGradeSystem.grades.getRange(18, 19);

    expect(res, expected);
  });

  test('5 is v1 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('5'));
    var expected = [verminGradeSystem.findByName('v1')];

    expect(res, expected);
  });

  test('6A is v2 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('6a'));
    var expected = [verminGradeSystem.findByName('v2')];

    expect(res, expected);
  });

  test('6A+ is v2 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('6a+'));
    var expected = [verminGradeSystem.findByName('v2')];

    expect(res, expected);
  });

  test('6B is v3 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('6b'));
    var expected = [verminGradeSystem.findByName('v3')];

    expect(res, expected);
  });

  test('6B+ is v4 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('6b+'));
    var expected = [verminGradeSystem.findByName('v4')];

    expect(res, expected);
  });

  test('7A is v6 atob', () {
    var res = vToFontCalculator.btoa(fontGradeSystem.findByName('7a'));
    var expected = [verminGradeSystem.findByName('V6')];

    expect(res, expected);
  });

  test('v10 is 7c+ atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('v10'));
    var expected = [fontGradeSystem.findByName('7c+')];

    expect(res, expected);
  });

  test('v11 is 8A atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('v11'));
    var expected = [fontGradeSystem.findByName('8a')];

    expect(res, expected);
  });

  test('v13 is 8B atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('v13'));
    var expected = [fontGradeSystem.findByName('8b')];

    expect(res, expected);
  });

  test('v16 is 8c+ atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('v16'));
    var expected = [fontGradeSystem.findByName('8c+')];

    expect(res, expected);
  });

  test('v17 is 9a atob', () {
    var res = vToFontCalculator.atob(verminGradeSystem.findByName('v17'));
    var expected = [fontGradeSystem.findByName('9a')];

    expect(res, expected);
  });

  test('builder 6b to v3', () {
    var res = fontGradeSystem.convert('6b').to(verminGradeSystem);
    var expected = [verminGradeSystem.findByName('v3')];
    expect(res, expected);
  });

  test('builder 6a+ to v3', () {
    var res = fontGradeSystem.convert('6a+').to(verminGradeSystem);
    var expected = [verminGradeSystem.findByName('v2')];
    expect(res, expected);
  });

  test('builder from', () {
    var res = fontGradeSystem.convert('v3').from(verminGradeSystem);
    var expected = [
      fontGradeSystem.findByName('6A+'),
      fontGradeSystem.findByName('6b'),
    ];
    expect(res, expected);
  });
}
