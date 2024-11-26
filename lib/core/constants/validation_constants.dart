class ValidationConstants {
  // names
  static const String nameRegex = r'^[a-zA-Z]{2,}$';
  // email
  static const String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  // password
  static const int minPasswordLength = 8;
}
