class Wrapper {
  static String wrap(String text, int column) {
    String result = '';
    if (text.isEmpty || column <= 0) {
      throw new ArgumentError();
    }
    result = "Hi this is a\ntext";
    if (text.length <= column) {
      result = text;
    }else{
      result = text.substring(0,column);
      result += '\n'+text.substring(column,text.length).replaceFirstMapped(' ', (d)=>''); 
    }
    return result;
  }
}
