import 'package:flutter_test/flutter_test.dart';
import 'package:form_validator_technical_assessment/core/utils/validators.dart';

void main() {
  group('Email Validation', () {
    test('should return null for valid email', () {
      expect(Validators.validateEmail('test@example.com'), null);
    });

    test('should return error message for invalid email', () {
      expect(Validators.validateEmail('invalid-email'), 'Invalid email format');
    });
  });

  group('Password Validation', () {
    // write your password validation tests here

    
  });
}
