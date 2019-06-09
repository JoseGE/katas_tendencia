class Anagrams{
  List<String> _dataWords;
  Anagrams(List<String> dataInput) {
    if(dataInput == null) {
      throw new ArgumentError(Null);
    }
    if(dataInput.length <= 1){
      throw new ArgumentError();
    }
    _dataWords = dataInput;
  }

  Map<String,List<String>> find() {
    Map<String,List<String>> anagrams = new Map<String,List<String>>();
    for (String word in _dataWords) {
      List<String> match = new List<String>();
      int wordLength = 0;
      for (String w in _dataWords.where((i)=>i != word)) {
        List<String> letters = w.split("");
        for (var l in letters) {
          if(word.contains(l)){
            wordLength++;
          }
        }
        if(wordLength == word.length) {
          match.add(w);
          _dataWords.remove(w);
        }
        wordLength = 0;
      }
      anagrams[word] = match;
    }
    return anagrams;
  }


}