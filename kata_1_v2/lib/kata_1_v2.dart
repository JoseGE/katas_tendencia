const List<String> COMMANDS = ["-g","-d","-h"];
Map<String,String> listToProcess = new Map();

List<String> stringSeparator(String lineInput) {
  return  lineInput.split(" ");
}

int commandFinder(String lineInput) {
  int commandCounter = 0;
  var commandList = stringSeparator(lineInput);
  //Check command and args
  for (int c = 0; c < commandList.length; c++) {
    var command = commandList[c];
    if(command.startsWith("-") && COMMANDS.contains(command)) {
      listToProcess[command] = commandList[c+1];
      commandCounter++;
    }
  }
  print(listToProcess);
  return commandCounter;
}

String checkInputArgs(Map<String,String> commandArgs) {

 commandArgs.forEach((c,a) => {
   
  if(COMMANDS.contains(c))
    print(a.split(","))
  
 });

 return "OK";
}
