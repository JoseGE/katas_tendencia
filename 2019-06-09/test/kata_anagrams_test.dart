import 'package:kata_anagrams/kata_anagrams.dart';
import 'package:test/test.dart';
/**
 * 1. Se ingresa un listado null -> ThrowNullException
 * 2. Se ingresa solo una palabra -> ThowOutLength
 * 3. Se ingresa una palabra con 's -> returnWordWithout 's 
 * 4. Se ingresan palabras duplicadas -> returnRemovedDuplicates
 * 5. Se ingresa dos palabras -> returnAnagram
 */
void main() {
  test('WithNullInput_ThrowNullException', () {
    List<String> data = null;
    // Anagrams checker = new Anagrams();
    expect(()=> new Anagrams(data), throwsArgumentError );
  });
  test('WithOneWordInput_ThowOutLength', () {
    List<String> data = ['Hola'];
    // Anagrams checker = new Anagrams();
    expect(()=> new Anagrams(data), throwsRangeError );
  });
  test('WithWordSInput_returnWordWithoutSand', () {
    List<String> data = ["Hola's","Hola","aloH"];
    Anagrams checker = new Anagrams(data);
    expect(checker.findAnagram(), equals(["Hola"]) );
  });
  test('WithWordSInput_returnRemovedDuplicate', () {
    List<String> data = ["Hola's","Hola","aloH"];
    Anagrams checker = new Anagrams(data);
    expect(checker.findAnagram(), equals(["Hola"]) );
  });
  test('WithWordInput_returnAnagram', () {
    List<String> data = ["Hola's","aloH"];
    Anagrams checker = new Anagrams(data);
    expect(checker.findAnagram(), equals(["Hola aloH"]) );
  });



}
