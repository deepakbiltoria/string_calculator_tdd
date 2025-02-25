class Calculator{
int add(String numbers){

  if(numbers.isEmpty) return 0;

  // RegExp regEx = RegExp(r',|\n');
  String delimeter = r',|\n'; //default delemeters
  String numbersTemp = numbers;

  //detect custum delimeter
  if (numbers.startsWith('//')) {
    final delimeter_limit = numbers.indexOf('\n');
    delimeter = RegExp.escape(numbers.substring(2, delimeter_limit));
    numbersTemp = numbers.substring(delimeter_limit + 1);
  }
print("delimeter value $delimeter");

  final numList = numbersTemp.split(RegExp(delimeter));

  return numList
      .map((digit) => digit.isEmpty ? 0 : int.parse(digit))
      .fold(0, (sum, num) => sum + num);
}
}
