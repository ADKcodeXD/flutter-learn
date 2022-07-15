/// 检测输入的字符串是否为email
bool isEmail(String input) {
  if (input == null || input.isEmpty) {
    return false;
  }
  String regexEmail = r'^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$';
  return RegExp(regexEmail).hasMatch(input);
}

/// 检查输入字符串的长度
bool checkInputLength(String input, int min, int max) {
  if (input == null || input.isEmpty) {
    return false;
  }
  if (input.length < min || input.length > max) {
    return false;
  }
  return true;
}
