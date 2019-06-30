Map<int,String> _romanNumbers = {
  1:'I',
  4:'IV',
  5:'V',
  9:'IX',
  10:'X',
  40:'XL',
  50:'L',
  90:'XC',
  100:'C',
  400:'CD',
  500:'D',
  900:'CM',
  1000:'M',
};

String converToRomanNumber(input) {
  var result = '';
  if(input == 0 || input == '') {
    return 'Valor cero';
  }
  
 _romanNumbers.keys.toList().reversed.forEach((k) {

     while (input >= k) {
        input -= k;
        result += _romanNumbers[k];
      }
   
  });
  return result;
}