import 'dart:io';

void main() {
  print("Enter the first number:");
  String? firstInput = stdin.readLineSync();
  double? firstNumber = double.tryParse(firstInput ?? '0');
  print("Enter the second number:");
  String? secondInput = stdin.readLineSync();
  double? secondNumber = double.tryParse(secondInput ?? '0');
  double sum = (firstNumber ?? 0) + (secondNumber ?? 0);
  String resultMessage = "The sum of $firstNumber and $secondNumber is $sum.";
  print(resultMessage);
}
