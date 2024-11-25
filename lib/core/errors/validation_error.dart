class ValidationError implements Exception {
  final String message;
  
  ValidationError(this.message);
}