import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/string_calculator.dart';

void main(){

  late Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group("string calculator tests", (){
    
    test('empty string test', (){

      expect(calculator.add(""), 0);
    });
    test('try single number string', () {

      expect(calculator.add("1"), 1);
    });

    test('try comma seprated numbers', () {

      expect(calculator.add("1,2,3"), 6);
    });

    test('try empty string inside comma seprated numbers', () {

      expect(calculator.add("1,2,,3"), 6);
    });
    test('testing semicolon as new delimiter  ', () {

      expect(calculator.add("//;\n1;2"), 3);
    });

  });

  group("string calculator tests for exceptions", (){

    test('negative number will throw an exception', () {

      expect(
            () => calculator.add("1,-2,3"),
        throwsA(isA<Exception>().having(
              (e) {
                print(e.toString());
                return e.toString();
              },
          'message',
          contains("negative numbers not allowed: -2"),
        )),
      );
    });

    test('multiple negative number will throw an exception and show them in message', () {

      expect(
            () => calculator.add("1,-2,-3,-4"),
        throwsA(isA<Exception>().having(
              (e) {
            print(e.toString());
            return e.toString();
          },
          'message',
          contains("negative numbers not allowed: -2,-3,-4"),
        )),
      );
    });


  });


}