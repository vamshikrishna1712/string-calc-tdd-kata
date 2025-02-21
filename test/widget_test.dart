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
}
