class OpenaiInterfaceException implements Exception {
  final String message;

  OpenaiInterfaceException(this.message);

  @override
  String toString() {
    return "OpenaiInterfaceException: $message";
  }
}
