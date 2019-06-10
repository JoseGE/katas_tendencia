class Anagrams {
  List<String> _wordsData;
  Anagrams(List<String> inputData) {
    if(inputData == null){
      throw new ArgumentError("Null inputData");
    }
    if(inputData.length <= 1){
      throw new RangeError.value(1,"out of range");
    }
    _wordsData = inputData;
  }
  String _checkEndWord(String word){
    return word.contains("'s") ? word.substring(0,word.length-2) : word;
  }
  List<String> _cleanWords(List<String> words) {
    List<String> word= new List<String>();
    for (var w in _wordsData) {
      word.add(_checkEndWord(w));
    }
    word = word.toSet().toList();
    return word;
  }
   findAnagram() {
   List<String> words = _cleanWords(_wordsData);
   Map<String,String> wordAnagram = new Map<String,String>();
   List<String> wordAnagramList = new List<String>();
   int lengthWord=0;
   for (int j = 0; j < words.length; j++) {
     var w = words[j];
     List<String> anagramSuccess = [];
     for (String wordCheck in words.where((x) => x!=w)) {
       for (var  i= 0; i < wordCheck.length; i++) {
         if(w.contains(wordCheck[i])) {
           lengthWord++;
         }
       }
       if(w.length == lengthWord) {
         anagramSuccess.add(wordCheck);
        
       }
     }
     wordAnagram[w] = anagramSuccess.join(" ");
   }
   wordAnagram.forEach((k,v)=>{
     if(v!='') {
       wordAnagramList.add([k,v].join(" "))
     }
   });
   return wordAnagramList;
  }
}