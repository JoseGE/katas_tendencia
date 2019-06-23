class NumberWord {
  Map<int, String> _numberWordList = {
    0: 'zero',
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
    40: 'forty',
    50: 'fifty',
    60: 'sixty',
    70: 'seventy',
    80: 'eighty',
    90: 'ninety',
    
  };
  String numberToWord(value) {
    String numberWord = '';
    if (value == '' || value == null) {
      throw new ArgumentError("Error");
    }
    if (value > 19 && value < 100) {
      int unit = int.tryParse(value.toString()[1]);
      
      numberWord = _numberWordList[value - unit];
      if (unit > 0) {
        numberWord += ' '+_numberWordList[unit];
      }
    }else if(value > 99 && value < 1000){
        int unit = int.tryParse(value.toString()[2]);
        int dec = int.tryParse(value.toString()[1]);
        int cen = int.tryParse(value.toString()[0]);
        numberWord = _numberWordList[cen];
        numberWord += ' hundred';

    } else {
      numberWord = _numberWordList.keys.contains(value)
          ? _numberWordList[value]
          : 'none';
    }

    return numberWord;
  }
}
