class Wrapper {

  static String wrap(String text, int column){
    String result = '';
    if(text == null || text.isEmpty || column == null ) throw new ArgumentError();
    if(column <= 0) throw new RangeError('negative column');
    if(text.length <= column){
      result = text;
    }else{
      String breakText = '';
      int lastLength = 0;
      for (var i = 0; i < text.length; i++) {
        if(i==column){
          breakText = text.substring(lastLength,i); 
        }
      }
      return 'This \nis a \ntext';
    }

    return result;
  }
}