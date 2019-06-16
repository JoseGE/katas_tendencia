import 'package:kata_sorting_it_out/kata_sorting_it_out.dart';
import 'package:test/test.dart';
/**TEST CASES
 * 1. Si valor vacio -> returnArgumentError
 * 2. Si se ingresa palabras mayusculas seran convertidas en minusculas -> ReturnLowerCaseValue
 * 3. Si se ingresan comas u otros signos -> solo retornar letras
 * 4. Si se ingresa una palabra -> que las letras sean organizadas de a - z
 */
void main() {
  test('WithEmptyValue_ReturnArgumentError', () {
    Sorting sorter = new Sorting();
    expect(()=>sorter.sort(''), throwsArgumentError);
  });
  test('WithUpperCaseValue_ReturnLowerCaseValue', () {
    Sorting sorter = new Sorting();
    expect(sorter.sort('AcW'), 'acw');
  });
  test('WithSpecialCharacterValue_ReturnOnlyWordValue', () {
    Sorting sorter = new Sorting();
    expect(sorter.sort('Ac,W'), 'acw');
  });
  test('WithSpecialCharacterValue2_ReturnOnlyWordValue', () {
    Sorting sorter = new Sorting();
    expect(sorter.sort('Ac,W!'), 'acw');
  });
  test('WithWordValue_ReturnSorter', () {
    Sorting sorter = new Sorting();
    expect(sorter.sort('c,Wa!'), 'acw');
  });
}
