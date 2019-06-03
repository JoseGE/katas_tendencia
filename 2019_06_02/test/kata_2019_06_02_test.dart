import 'package:kata_2019_06_02/kata_2019_06_02.dart';
import 'package:test/test.dart';

void main() {
  test('withZeroInput_returnMessageValueZero', () {
    var input = '';
    expect(converToRomanNumber(input), 'Valor cero');
  });
  test('withOneInput_returnOneRomanNumber', () {
    var input = 1;
    expect(converToRomanNumber(input), 'I');
  });
  test('withFiveInput_returnFiveRomanNumber', () {
    var input = 5;
    expect(converToRomanNumber(input), 'V');
  });
  test('withTenInput_returnTenRomanNumber', () {
    var input = 10;
    expect(converToRomanNumber(input), 'X');
  });
  test('withFiveTeenInput_returnFiveTeenRomanNumber', () {
    var input = 15;
    expect(converToRomanNumber(input), 'XV');
  });
}
