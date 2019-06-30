import 'package:word_wrap/word_wrap.dart';
import 'package:test/test.dart';

/** TEST CASE
 * 1. with empty stringText -> throwArgumentError
 * 2. with column <= 0 -> throwArgumentError
 * 3. with stringText length <= column -> return stringText
 * 4. with stringText length > column -> return new stringText
 */
void main() {
  test('withEmptyText_throwArgumentError', () {
    expect(() => Wrapper.wrap('', 0), throwsArgumentError);
  });

  test('withColumnZero_throwArgumentError', () {
    expect(() => Wrapper.wrap('', 0), throwsArgumentError);
  });

  test('withTextLengthEqualtoColunm_returnText', () {
    String text = 'Hi this is a text';
    expect(Wrapper.wrap(text, 30), equals(text));
  });
  test('withText_returnNewText', () {
    String text = 'Hi this is a text';
    String actual = "Hi this is\na text";
    expect(Wrapper.wrap(text, 10), equals(actual));
  });
}
