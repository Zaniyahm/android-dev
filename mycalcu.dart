import 'dart:io';

void main() {
  bool isRunning = true;
  while (isRunning) {
    print("\n--- Simple Calculator ---");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Compare two numbers");
    print("6. Exit");
    stdout.write("Enter your choice (1-6): ");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        performOperation('+');
        break;
      case '2':
        performOperation('-');
        break;
      case '3':
        performOperation('*');
        break;
      case '4':
        performOperation('/');
        break;
      case '5':
        performComparison();
        break;
      case '6':
        isRunning = false;
        print("Exiting program.");
        break;
      default:
        print("Invalid choice, please select a number between 1 and 6.");
    }
  }
}

void performOperation(String operator) {
  double num1 = getNumber("Enter the first number: ");
  double num2 = getNumber("Enter the second number: ");

  double result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("Invalid operator");
      return;
  }

  print("Result: $num1 $operator $num2 = $result");
}

void performComparison() {
  double num1 = getNumber("Enter the first number: ");
  double num2 = getNumber("Enter the second number: ");

  String comparison;
  if (num1 > num2) {
    comparison = "greater than";
  } else if (num1 < num2) {
    comparison = "less than";
  } else {
    comparison = "equal to";
  }

  print("Comparison: $num1 is $comparison $num2");
}

double getNumber(String prompt) {
  stdout.write(prompt);
  String? input = stdin.readLineSync();
  return double.tryParse(input ?? '0') ?? 0;
}
