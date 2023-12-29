class TokenRefreshException implements Exception {
  final String message;

  TokenRefreshException(this.message);

  @override
  String toString() {
    return "TokenRefreshException: $message";
  }
}
