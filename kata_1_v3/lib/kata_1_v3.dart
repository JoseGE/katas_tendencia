List<String> _flagList = ["g","d","h"];
Map<String,dynamic> _flagArgs = new Map();

flagValidator(String flag) {
  return (flag.startsWith('-') && _flagList.contains(flag.substring(1))) ? true :false;
}

flagFinder(String inputLine){
  var inputLineS = inputLine.split(" ");
  var flag;
  for (int f=0;f < inputLineS.length;f++) {
    if(flagValidator(inputLineS[f])) {
      flag = inputLineS[f].substring(1);
      _flagArgs[flag] = (!flagValidator(inputLineS[f+1])) ? inputLineS[f+1].split(',') : true;
      f = (flagValidator(inputLineS[f])) ? f++ : f;
    }

  }
  print("${_flagArgs}");
  
  return ;
}