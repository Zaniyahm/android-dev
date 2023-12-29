import 'dart:io';

void main() {
  print("Enter a number to learn its multiplication table:");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  print("\nMultiplication Table for $number:");
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    sum += result;
    print("$number x $i = $result");
  }

  print("\nThe sum of all numbers in the table is: $sum");
}
