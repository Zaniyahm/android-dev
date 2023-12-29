import 'dart:io';

void main() {
  List<int> numbers1 = [1, 2, 3, 4, 5];
  List<int> numbers2 = [10, 20, 30, 40, 50];
  var doubleNumber = (int number) => number * 2;
  var squareNumber = (int number) => number * number;
  print("Doubled Numbers:");
  processList(numbers1, doubleNumber);
  print("\nSquared Numbers:");
  processList(numbers2, squareNumber);
}

void processList(List<int> numbers, int Function(int) operation) {
  for (var number in numbers) {
    int result = operation(number);
    print("Original: $number, Processed: $result");
  }
}
