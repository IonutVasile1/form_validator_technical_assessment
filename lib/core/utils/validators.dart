import 'package:form_validator_technical_assessment/core/constants/validation_constants.dart';

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    return RegExp(ValidationConstants.emailRegex).hasMatch(value)
        ? null
        : 'Invalid email format';
  }

  static String? validatePassword(String? value) {
    // This is the broken validation that needs fixing
    // Passwords must be at least 8 characters long
    // Passwords must contain at least 1 uppercase letter
    // Passwords must contain at least 1 number
    // Passwords must contain at least 1 special character (!@#$&*~)

    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password too short';
    }

    return null;
  }

  static String? validateFirstName(String? value) => null;
  static String? validateLastName(String? value) => null;
}
