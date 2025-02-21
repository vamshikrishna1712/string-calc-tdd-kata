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
}
