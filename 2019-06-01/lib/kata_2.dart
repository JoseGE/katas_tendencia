converToRomanNumber(var inputNumber) {
  if(inputNumber == 0) {
    return null;
  } else if(inputNumber == 1) {
    return 'I';
  } else if(inputNumber == 10) {
    return 'X';
  }

  if(inputNumber.toString().length == 2){
    var result = "";
    var numbers = inputNumber.toString();
    if(numbers[0] == '1') {
      result += 'X';
    }
    if(int.parse(numbers[1]) >= 1 || int.parse(numbers[1]) <= 3) {
      result += 'I'*int.parse(numbers[1]);
    }
    
    return result;
  }
}