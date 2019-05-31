import 'dart:io';
import 'package:kata_1/kata_1.dart' as kata_1;

main(List<String> arguments) {
  var app = new kata_1.Operator();
  List<String> data = app.stringSeparator("-g this,is,a,list -d 1,2,-3,5");
  app.findCommand(data);
  print(data);
}
