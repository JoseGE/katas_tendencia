Map<int, String> _numberListWord = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four',
  5: 'five',
  6: 'six',
  7: 'seven',
  8: 'eight',
  9: 'nine',
  10: 'ten',
  11: 'eleven',
  12: 'twelve',
  13: 'thirteen',
  14: 'fourteen',
  15: 'fifteen',
  16: 'sixteen',
  17: 'seventeen',
  18: 'eighteen',
  19: 'nineteen',
  20: 'twenty',
  30: 'thirty',
  40: 'fourty',
  50: 'fifty',
  60: 'sixty',
  70: 'seventy',
  80: 'eighty',
  90: 'ninety'
};
String convertToWord(int value) {
  String result = "";
  if (value == null || value == 0) throw new ArgumentError();
  result = _numberListWord[value];
  if (value >= 20 && value < 100) {
    result = getTyNumberText(value);
  } else if (value >= 100) {
    int cen = parseInt(value.toString()[0]);
    int unit = parseInt(value.toString()[2]);
    int dec = parseInt(value.toString()[1]);
    result = getNumberText(cen) + ' hundred';
    if (unit > 0 && dec == 0) result += ' ' + getNumberText(unit);
    if (dec == 1) result += ' ' + getNumberText(10 + unit);
    if (dec >= 2) result += ' ' + getTyNumberText((dec*10)+unit);
  }
  return result;
}

int parseInt(String val) {
  return int.tryParse(val);
}

String getNumberText(int value) {
  String text =
      (_numberListWord.keys.contains(value)) ? _numberListWord[value] : '';
  return text;
}

String getTyNumberText(int value) {
  String text = '';
  int unit = parseInt(value.toString()[1]);
  int dec = value - unit;
  text = getNumberText(dec);
  if(unit > 0){
    text+= ' ' + getNumberText(unit);
  }
  return text;
}
