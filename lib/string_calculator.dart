class Calculator{
int add(String numbers){

  if(numbers.isEmpty){

    return 0;
  }

  RegExp regEx = RegExp(r',|\n');
  List<String> numList = numbers.split(regEx);
  final sum = numList
      .map(int.parse) // Attempts to parse ALL tokens, including empty strings
      .fold(0, (sum, num) => sum + num);
  print(sum);
  return sum;
}
}