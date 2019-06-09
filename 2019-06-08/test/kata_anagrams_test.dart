import 'package:kata_anagrams/kata_anagrams.dart';
import 'package:test/test.dart';
/**
 * 1. Si se ingresa un dato null -> throw ArgumentErrorNull
 * 2. Si se ingresa un dato vacio -> Throw ArgumentError  
 * 3. Si se ingresa una palabra -> Throw ArgumentError 
 * 4. Se ingresa dos palabras -> encontrar anagrama
 * */
void main() {
  test("WithNullInput_throwArgumentError", () {
    List<String> data = null;
    expect( ()=>new Anagrams(data), throwsA(isArgumentError.having((d)=>d.message, 'TestNullInput', Null)));
  });
  test("WithEmptyInput_throwArgumentErrorEmpty", () {
     List<String> data = [];
    expect(() => new Anagrams(data), throwsA(isArgumentError));
  });
  test("WithOneWordInput_throwZero", () {
    List<String> data = ["Hola"];
    expect(() => new Anagrams(data), throwsA(isArgumentError));
  });
  test("WithWordInput_returnAnagram", () {
    List<String> data = ["Hola","aloH"];
    Anagrams checker = new Anagrams(data);
    Map<String,List<String>> actual = {"Hola":["aloH"]};
    expect(checker.find(), actual);
  });
  test("WithWordInput2_returnAnagram", () {
    List<String> data = ["Hola","aloH","Papa"];
    Anagrams checker = new Anagrams(data);
    Map<String,List<String>> actual = {"Hola":["aloH"],"Papa":[]};
    expect(checker.find(), actual);
  });


  
}
