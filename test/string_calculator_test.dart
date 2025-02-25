import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/string_calculator.dart';

void main(){

  group("string calculator tests", (){
    test('empty string test', (){
      final val = Calculator();
      expect(val.add(""), 0);
    });
    test('try single number string', () {
      final calculator = Calculator();
      expect(calculator.add("1"), 1);
    });

    test('try comma seprated numbers', () {
      final calculator = Calculator();
      expect(calculator.add("1,2,3"), 6);
    });

    test('try empty string inside comma seprated numbers', () {
      final calculator = Calculator();
      expect(calculator.add("1,2,,3"), 6);
    });











  });

}