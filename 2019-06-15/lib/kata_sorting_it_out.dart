class Sorting {
  String sort(String input) {
    if(input == '') {
      throw new ArgumentError();
    }
    String lowerCaseInput = input.toLowerCase();
    List<String> inputClean = [];
    for (var i = 0; i < lowerCaseInput.length; i++) {
      if(lowerCaseInput.codeUnitAt(i) >= 97 && lowerCaseInput.codeUnitAt(i) <= 122 ){
        inputClean.add(lowerCaseInput[i]);
      }
    }
   
    return inputClean.join('');
  }
}