import 'package:flutter_test/flutter_test.dart';
import 'package:string_tdd_kata/main.dart';

void main() {
  test('Return 0 when empty string is given', () {
    expect(0, add(''));
  });

  test('Return input integer when single number is given', () {
    expect(1, add('1'));
  });

  test('Return sum of 2 nums when 2 comma separated numbers are given', () {
    expect(3, add('1,2'));
  });

  test('Return sum of all numbers when multiple comma separated numbers are given', () {
    expect(6, add('1,2,3'));
    expect(10, add('1,2,3,4'));
  });

  test('Return the sum of numbers when new line is used instead of comma', () {
    expect(6, add('1\n2,3'));
  });

  test('Return sum of numbers when custom delimiter is used. Delimiter is specified at the beginning of input', () {
    expect(3, add('//;\n1;2'));
  });

  test('Should throw an exception with the list of negative numbers when negative numbers are provided', () {
    final testCases = [
      (input: '-1,-2', exceptionMessageContains: '-1,-2'),
      (input: '1,-2', exceptionMessageContains: '-2'),
      (input: '-1\n2,3', exceptionMessageContains: '-1'),
      (input: '//*\n1*2*-3*-4', exceptionMessageContains: '-3,-4'),
    ];

    for (final testCase in testCases) {
      try {
        add(testCase.input);
      } catch (e) {
        expect(
          e,
          isA<NegativeNumberException>().having(
            (exception) => exception.message,
            'Exception message',
            contains(testCase.exceptionMessageContains),
          ),
        );
      }
    }
  });
}
