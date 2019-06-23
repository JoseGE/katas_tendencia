import 'package:numbers_words/numbers_words.dart';
import 'package:test/test.dart';

/** TEST CASE
 * 
 * With empty value -> throwArgumentError 
 * With null value -> throwArgumentError 
 * With value Zero -> return Word Zero
 * With value 1 -> return Word One
 * With value 2 -> return Word Two
 * With value 3 -> return Word Three
 * With value 4 -> return Word Four
 * With value 5 -> return Word Five
 * With value 6 -> return Word Six
 * With value 7 -> return Word Seven
 * With value 8 -> return Word Eight
 * With value 9 -> return Word Nine
 * With value 10 -> return Word Ten
 */
void main() {
  test('withEmptyValue_throwArgumentError', () {
    NumberWord converter = new NumberWord();
    var value = "";
    expect(() => converter.numberToWord(value), throwsArgumentError);
  });
  test('withNullValue_throwArgumentError', () {
    NumberWord converter = new NumberWord();
    var value = null;
    expect(() => converter.numberToWord(value), throwsArgumentError);
  });
  test('withZeroNumberValue_returnWordZero', () {
    NumberWord converter = new NumberWord();
    var value = 0;
    expect(converter.numberToWord(value), equals('zero'));
  });
  test('withOneNumberValue_returnWordOne', () {
    NumberWord converter = new NumberWord();
    var value = 1;
    expect(converter.numberToWord(value), equals('one'));
  });
  test('withTwoNumberValue_returnWordTwo', () {
    NumberWord converter = new NumberWord();
    var value = 2;
    expect(converter.numberToWord(value), equals('two'));
  });

  test('withThreeNumberValue_returnWordThree', () {
    NumberWord converter = new NumberWord();
    var value = 3;
    expect(converter.numberToWord(value), equals('three'));
  });

  test('withFourNumberValue_returnWordFour', () {
    NumberWord converter = new NumberWord();
    var value = 4;
    expect(converter.numberToWord(value), equals('four'));
  });

  test('withFiveNumberValue_returnWordFive', () {
    NumberWord converter = new NumberWord();
    var value = 5;
    expect(converter.numberToWord(value), equals('five'));
  });

  test('withSixNumberValue_returnWordSix', () {
    NumberWord converter = new NumberWord();
    var value = 6;
    expect(converter.numberToWord(value), equals('six'));
  });

  test('withSevenNumberValue_returnWordSeven', () {
    NumberWord converter = new NumberWord();
    var value = 7;
    expect(converter.numberToWord(value), equals('seven'));
  });

  test('withEightNumberValue_returnWordEight', () {
    NumberWord converter = new NumberWord();
    var value = 8;
    expect(converter.numberToWord(value), equals('eight'));
  });

  test('withNineNumberValue_returnWordNine', () {
    NumberWord converter = new NumberWord();
    var value = 9;
    expect(converter.numberToWord(value), equals('nine'));
  });

  test('withTenNumberValue_returnWordTen', () {
    NumberWord converter = new NumberWord();
    var value = 10;
    expect(converter.numberToWord(value), equals('ten'));
  });

  test('with11NumberValue_returnWordEleven', () {
    NumberWord converter = new NumberWord();
    var value = 11;
    expect(converter.numberToWord(value), equals('eleven'));
  });

  test('with12NumberValue_returnWordTwelve', () {
    NumberWord converter = new NumberWord();
    var value = 12;
    expect(converter.numberToWord(value), equals('twelve'));
  });
  test('with13NumberValue_returnWordThirteen', () {
    NumberWord converter = new NumberWord();
    var value = 13;
    expect(converter.numberToWord(value), equals('thirteen'));
  });
  test('with14NumberValue_returnWordFourteen', () {
    NumberWord converter = new NumberWord();
    var value = 14;
    expect(converter.numberToWord(value), equals('fourteen'));
  });
  test('with15NumberValue_returnWordFifteen', () {
    NumberWord converter = new NumberWord();
    var value = 15;
    expect(converter.numberToWord(value), equals('fifteen'));
  });
  test('with16NumberValue_returnWordSixteen', () {
    NumberWord converter = new NumberWord();
    var value = 16;
    expect(converter.numberToWord(value), equals('sixteen'));
  });
  test('with20NumberValue_returnWordTwenty', () {
    NumberWord converter = new NumberWord();
    var value = 20;
    expect(converter.numberToWord(value), equals('twenty'));
  });
  test('with21NumberValue_returnWordTwentyOne', () {
    NumberWord converter = new NumberWord();
    var value = 21;
    expect(converter.numberToWord(value), equals('twenty one'));
  });
  test('with25NumberValue_returnWordTwentyFive', () {
    NumberWord converter = new NumberWord();
    var value = 25;
    expect(converter.numberToWord(value), equals('twenty five'));
  });
   test('with87NumberValue_returnWordEightySeven', () {
    NumberWord converter = new NumberWord();
    var value = 87;
    expect(converter.numberToWord(value), equals('eighty seven'));
  });
   test('with100NumberValue_returnWordOnehundred', () {
    NumberWord converter = new NumberWord();
    var value = 100;
    expect(converter.numberToWord(value), equals('one hundred'));
  });
}
