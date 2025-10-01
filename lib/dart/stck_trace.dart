void main() {
  try {
    firstFunction();
  } catch (e, stackTrace) {
    print("Error: $e");
    print("StackTrace: $stackTrace");
  }
}

void firstFunction() {
  secondFunction();
}

void secondFunction() {
  int result = 10 ~/ 0; // causes error
}
