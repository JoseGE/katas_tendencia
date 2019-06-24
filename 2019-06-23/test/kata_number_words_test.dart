import 'package:kata_number_words/kata_number_words.dart';
import 'package:test/test.dart';

/**
 * with null value -> throwArgumentError
 * with 0 value -> throwArgumentError
 * with 1 value -> returnTextOne
 * with 10 value -> returnTextTen
 * with 11 value -> returnTextEleven
 * with 25 value -> returnTextTwentyFive
 */
void main() {
  test('withNullValue_throwArgumentError', () {
    int value = null;
    expect(() => convertToWord(value), throwsArgumentError);
  });
  test('withZeroValue_throwArgumentError', () {
    int value = 0;
    expect(() => convertToWord(value), throwsArgumentError);
  });
  test('with1Value_returnTextOne', () {
    int value = 1;
    expect(convertToWord(value), equals('one'));
  });
  test('with10Value_returnTextTen', () {
    int value = 10;
    expect(convertToWord(value), equals('ten'));
  });
  test('with11Value_returnTextEleven', () {
    int value = 11;
    expect(convertToWord(value), equals('eleven'));
  });
   test('with25Value_returnTextTwentyFive', () {
    int value = 25;
    expect(convertToWord(value), equals('twenty five'));
  });
  test('with27Value_returnTextTwentySeven', () {
    int value = 27;
    expect(convertToWord(value), equals('twenty seven'));
  });
  test('with37Value_returnTextthirtySeven', () {
    int value = 37;
    expect(convertToWord(value), equals('thirty seven'));
  });
  test('with100Value_returnTextOneHundred', () {
    int value = 100;
    expect(convertToWord(value), equals('one hundred'));
  });
  test('with300Value_returnTextThreeHundred', () {
    int value = 300;
    expect(convertToWord(value), equals('three hundred'));
  });
  test('with301Value_returnTextThreeHundredOne', () {
    int value = 301;
    expect(convertToWord(value), equals('three hundred one'));
  });
  test('with310Value_returnTextThreeHundredOne', () {
    int value = 310;
    expect(convertToWord(value), equals('three hundred ten'));
  });
  test('with320Value_returnTextThreeHundredTwenty', () {
    int value = 320;
    expect(convertToWord(value), equals('three hundred twenty'));
  });
   test('with745Value_returnTextSHFF', () {
    int value = 745;
    expect(convertToWord(value), equals('seven hundred fourty five'));
  });
   test('with985Value_returnTextSHFF', () {
    int value = 985;
    expect(convertToWord(value), equals('nine hundred eighty five'));
  });
 
}
