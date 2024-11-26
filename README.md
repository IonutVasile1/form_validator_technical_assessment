# Form Validator Technical Assessment

Welcome to the Form Validator technical assessment! 


### Introduction

This project is a simple registration form implementation that needs some improvements and bug fixes. You'll have approximately 30 minutes to work through the tasks below.

### Running the project

```dart
flutter pub get
flutter run
```

### Running the tests

```dart
flutter test
```

### Project overview

The project implements a basic registration form with email and password validation. The current implementation includes:

	•	Basic form UI with email and password fields
	•	Form validation logic
	•	Unit tests for email validation
	•	Submit button without loading state


### Project structure

```
lib/
├── core/
│   ├── constants/      # Validation constants
│   ├── errors/         # Error handling
│   └── utils/          # Validation logic
├── domain/
│   └── models/         # Data models
└── presentation/
    ├── screens/        # Main form screen
    └── widgets/        # Reusable widgets
test/
└── unit/              # Unit tests
```

### Getting Started

•	Review the existing code to understand the current implementation
•	You can use documentation and online resources
•	It's ok if you don't complete all the tasks
•	Focus on writing clean, maintainable code
•	Focus on communicating and explaining your though process
•	Feel free to ask questions at any point
•	Please work through these tasks in order




### Task 1: Fix Password Validation

__As a__ system administrator
__I want to__ ensure users create strong passwords
__So that__ user accounts remain secure

#### Description

The current password validation is not enforcing security requirements. Implement proper validation logic and corresponding unit tests.

#### Acceptance Criteria

1. Passwords must be at least 8 characters long
2. Passwords must contain at least 1 uppercase letter
3. Passwords must contain at least 1 number
4. Passwords must contain at least 1 special character (!@#$&*~)
5. Unit tests verify all validation rules

```dart
// Example test cases to implement
'password' -> invalid (no uppercase, number, or special char)
'Password1!' -> valid
'pass' -> invalid (too short)
'PASSWORD123' -> invalid (no special char)
```




### Task 2: Implement Form Submit Loading State

__As a__ user filling out the registration form
__I want to__ see visual feedback when my form is being submitted
__So that__ I know the application is processing my registration

#### Description

The form submit button should provide visual feedback during form submission by displaying a loading indicator and becoming disabled.

#### Acceptance Criteria

1. Button shows a loading spinner when form is being submitted
2. Button is disabled during submission
3. Loading state is cleared after submission completes




### Task 3: Add Password Visibility Toggle

__As a__ user entering my password
__I want to__ be able to show/hide my password
__So that__ I can ensure I typed it correctly while maintaining security

#### Description

Add a visibility toggle to the password field that allows users to switch between masked and visible password text.

#### Acceptance Criteria

1. Password field has a visibility toggle icon
2. Clicking the icon toggles password visibility
3. Toggle state persists while typing
4. Icon clearly indicates current visibility state




### Task 4: Implement Confirm Password

__As a__ user creating an account
__I want to__ confirm my password entry
__So that__ I don't make typing mistakes when setting my password

#### Description

Add a confirm password field that ensures users correctly enter their intended password.

#### Acceptance Criteria

1. New password confirmation field added below password field
2. Validation shows if passwords match
3. Show an error message when passwords don't match
4. Visibility toggle works like main password field
5. Unit tests verify matching validation

```dart
// Example test cases to implement
password: 'Password1!', confirm: 'Password1!' -> valid
password: 'Password1!', confirm: 'password1!' -> invalid
password: 'Password1!', confirm: '' -> invalid
```