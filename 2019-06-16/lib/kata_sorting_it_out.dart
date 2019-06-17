class Sorting {
  String sort(String inputValue) {
    if (inputValue == "" || inputValue == null) {
      throw new ArgumentError();
    }
    String inputLowerCase = inputValue.toLowerCase();
    List<String> letters = [];
    List<String> finalResult = [];
    for (var i = 0; i < inputLowerCase.length; i++) {
      var letter = inputLowerCase[i];
      if (getCodeChar(letter) >= 97 && getCodeChar(letter) <= 122) {
        letters.add(letter);
      }
    }
    for (var i = 0; i < letters.length ; i++) {
     for (var j = 0; j < letters.length - (i+1); j++) {
       if(getCodeChar(letters[j]) > getCodeChar(letters[j+1]) ) {
         finalResult.add(letters[j]);
       } 
     }
    }
    return finalResult.join("");
  }

  getCodeChar(String w) {
    int codechar = w.codeUnitAt(w.indexOf(w));
    return codechar;
  }
}
