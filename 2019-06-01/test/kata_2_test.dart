import 'package:kata_2/kata_2.dart';
import 'package:test/test.dart';

void main() {
  test('withInputZero_returnExep', () {
    var input = 0;
    expect(converToRomanNumber(input), null);
  });
  test('withInputNumber_returnRoman', () {
    var input = 10;
    expect(converToRomanNumber(input), 'X');
  });
  test('withInputNumber11_returnRoman', () {
    var input = 11;
    expect(converToRomanNumber(input), 'XI');
  });
   test('withInputNumber13_returnRoman', () {
    var input = 13;
    expect(converToRomanNumber(input), 'XIII');
  });
  test('withInputNumber12_returnRoman', () {
    var input = 12;
    expect(converToRomanNumber(input), 'XII');
  });
}
