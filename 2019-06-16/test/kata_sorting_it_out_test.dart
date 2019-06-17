import 'package:kata_sorting_it_out/kata_sorting_it_out.dart';
import 'package:test/test.dart';
/**
 * 1. Ingreso de valor null -> ThrowArgumentError
 * 2. Ingreso de valor vacio -> ThrowArgumentError
 * 3. Ingreso de palabras -> return todas es minusculas
 * 4. Ingreso de oracion con caracteres y espacios -> return solo palabras en minusculas
 * 5. Ingreso de oracion con caracteres y espacios -> retrun letras organizadas
 */
void main() {
    Sorting sorter = new Sorting();
  test('withNullInput_ThrowArgumentError', () {
    expect(() => sorter.sort(null),throwsArgumentError);
  });
   test('withEmptyInput_ThrowArgumentError', () {
    
    expect(() => sorter.sort(""),throwsArgumentError);
  });
  test('withWordInput_ReturnLowerCase', () {
    
    expect(sorter.sort("HolA"), equals("hola"));
  });
  test('withWordInput_ReturnOnlyWordsLowerCase', () {
    String input = "ArDso ww, as";
    expect(sorter.sort(input), equals("ardsowwas"));
  });
  test('withWordInput_ReturnSorterLetters', () {
    String input = "When not studying nuclear physics, Bambi likes to play beach volleyball.";
    expect(sorter.sort(input), equals("aaaaabbbbcccdeeeeeghhhiiiiklllllllmnnnnooopprsssstttuuvwyyyy"));
  });
}
