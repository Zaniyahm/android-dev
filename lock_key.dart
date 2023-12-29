import 'dart:math';

class PasswordManager {
  static final RegExp _lowerCase = RegExp(r'[a-z]');
  static final RegExp _upperCase = RegExp(r'[A-Z]');
  static final RegExp _number = RegExp(r'[0-9]');
  static final RegExp _specialChar = RegExp(r'[a-zA-Z0-9]');

  static String validatePasswordStrength(String password) {
    bool hasLower = _lowerCase.hasMatch(password);
    bool hasUpper = _upperCase.hasMatch(password);
    bool hasNumber = _number.hasMatch(password);
    bool hasSpecial = _specialChar.hasMatch(password);

    int length = password.length;

    if (length >= 8 && hasLower && hasUpper && hasNumber && hasSpecial) {
      return "Strong";
    } else if (length >= 6 && hasLower && hasUpper && hasNumber) {
      return "Intermediate";
    } else {
      return "Low";
    }
  }

  static String generatePassword({required String level}) {
    const String lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';
    const String upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const String numbers = '0123456789';
    const String specialChars = '!@#\$%^&*()_+[]{}';

    String chars = '';
    int length = 8;

    switch (level) {
      case "strong":
        chars = lowerCaseLetters + upperCaseLetters + numbers + specialChars;
        length = 12;
        break;
      case "intermediate":
        chars = lowerCaseLetters + upperCaseLetters + numbers;
        length = 10;
        break;
      case "low":
        chars = lowerCaseLetters;
        length = 6;
        break;
      default:
        return "Invalid level";
    }

    return List.generate(length, (index) => chars[Random().nextInt(chars.length)]).join();
  }
}


void main() {
  String password = "safa@TM";
  print(
      "Password Strength: ${PasswordManager.validatePasswordStrength(password)}");

  String generatedStrongPassword =
      PasswordManager.generatePassword(level: "strong");
  print("Generated Strong Password: $generatedStrongPassword");
}
