class Calculator{
int add(String numbers){

  if(numbers.isEmpty){

    return 0;
  }

  RegExp regEx = RegExp(r',|\n');
  List<String> numList = numbers.split(regEx);

  final sum = numList
      .map((digit) => digit.isEmpty ? 0 : int.parse(digit)) // "1,2,,3" this will give formatexception because of empty string so we check for empty string
      .fold(0, (sum, num) => sum + num);
  print(sum);
  return sum;
}
}