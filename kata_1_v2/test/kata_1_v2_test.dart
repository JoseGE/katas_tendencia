import 'package:kata_1_v2/kata_1_v2.dart';
import 'package:test/test.dart';

void main() {
  test('withStringInput_ReturnWordCount', () {
    expect(stringSeparator("-g this,is,a,list -d 1,2,-3,5"), 4);
  });
  test('withStringInput_ReturnCommandCount', () {
    expect(commandFinder("-g this,is,a,list -d 1,2,-3,5"), 2);
  });
   test('withStringInput_ReturnValidCommandCount', () {
    expect(commandFinder("-h -g this,is,a,list -d 1,2,-3,5"), 2);
  });
   test('withStringInput_ReturnValidCommandCount', () {
     Map<String, String> data = {"-g": "this,is,a,list", "-d": "1,2,-3,5"};
    expect(checkInputArgs(data),"OK");
  });


}
