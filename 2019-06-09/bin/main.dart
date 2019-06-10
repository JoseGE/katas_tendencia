import 'dart:io';
import 'package:kata_anagrams/kata_anagrams.dart' as kata_anagrams;
main(List<String> arguments) {
  var dataWord = new File('data/wordList.txt');
  dataWord.readAsLines().then(printAnagrams);
}

void printAnagrams(List<String> word) {
 kata_anagrams.Anagrams checker = new kata_anagrams.Anagrams(word);
 print(checker.findAnagram());
}
