class Operator {
  List<String> stringSeparator(String command) {
    List<String> stringList = command.split(' ');
    return stringList;
  }

  void findCommand(List<String> data) {
   
    for (int c=0; c < data.length; c++) {
      print(data[c]);
      if (data[c].startsWith("-",0)) {
        if (data[1] == "d") {
          List<int> commandValues;
         var values = data[c+1].split(',');
         for (var v in values) {
           print(v);
           commandValues.add(int.tryParse(v));
         }
          print(commandValues);
        }
         if (data[1] == "g") {
          List<String> commandValues;
          var values = data[c+1].split(',');
          for (var v in values) {
            print(v);
            commandValues.add(v.toString());
          }
          print(commandValues);
       
        }
      }
      
    }
  }
}
