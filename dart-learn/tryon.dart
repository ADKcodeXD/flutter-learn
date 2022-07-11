void main(List<String> args) {
  try {
    print(0 / 11);
  } catch (e) {
    print(e);
  } finally {
    print("finally");
  }

  try {
    print(0 / 0);
  // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("IntegerDivisionByZeroException");
  } on Exception catch (e) {
    print("Exception");
  } finally {
    print("finally");
  }
}