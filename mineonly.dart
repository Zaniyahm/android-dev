import 'dart:io';

void main() {
  print("Enter your Name:");
  String? name = stdin.readLineSync();
  print("Enter your Phone Number:");
  String? phoneNumber = stdin.readLineSync();
  print("Enter your Age:");
  String? age = stdin.readLineSync();
  print("Enter your Height (e.g., 5'6\"):");
  String? height = stdin.readLineSync();
  print("Enter your Weight (in kg):");
  String? weight = stdin.readLineSync();
  print("Enter your Address:");
  String? address = stdin.readLineSync();
  print("Enter your Hobbies (separated by comma):");
  String? hobbiesInput = stdin.readLineSync();
  List<String>? hobbies = hobbiesInput?.split(',');
  print("\n--- Biodata ---\n");
  print("Name: $name");
  print("Phone Number: $phoneNumber");
  print("Age: $age");
  print("Height: $height");
  print("Weight: $weight kg");
  print("Address: $address");
  print("Hobbies:");
  hobbies?.forEach((hobby) => print(" - $hobby"));
}
