import 'package:word_wrap/word_wrap.dart';
import 'package:test/test.dart';

/** TEST CASE
 * 1. with null text -> throwsArgumetError
 * 2. with empty text -> throwsArgumetError
 * 3. with null column -> throwsArgumetError
 * 4. with column <= 0 -> throwsRangeError
 * 5. with text length <= column -> return original text
 * 6. with text length > column -> return text with break
 */
void main() {
  test('withNullText_ThrowsArgumentError', () {
    expect(() => Wrapper.wrap(null, null), throwsArgumentError);
  });
  test('withEmptyText_throwsArgumentError', () {
    expect(() => Wrapper.wrap('', null), throwsArgumentError);
  });
  test('withNullColumn_throwsArgumentError', () {
    expect(() => Wrapper.wrap('asdfasd', null), throwsArgumentError);
  });

  test('withColumnNeg_throwsRangeError', () {
    expect(() => Wrapper.wrap('asdfasd', -8), throwsRangeError);
  });

  test('withTextLengthEqualColumn_returnOriginalText', () {
    String text = 'This is a text';
    expect(Wrapper.wrap(text, 18), equals(text));
  });

  test('withTextLengthMajorThanColumn_returnTextWithBreaks', () {
    String text = 'This is a text';
    String actual = 'This \nis a \ntext';
    expect(Wrapper.wrap(text, 5), equals(actual));
  });

}
