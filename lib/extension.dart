extension StringExtensions on String {
  bool get isEmail => contains("@") && contains(".");
}
void main() {
  String email = "lucky@example.com";
  String wrongEmail = "notAnEmail";

  print(email.isEmail);      // true
  print(wrongEmail.isEmail); // false
}
