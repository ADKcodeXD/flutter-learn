class Father {
  a() {
    print("xccsafasfgsagsagcc");
  }

  void say() {
    print("124gdasgaga56465");
  }
}

class Father2 {
  b() {
    print("xccsdsadavbvbvbbcc");
  }

  void say() {
    print("1245gsagas6465");
  }
}

class Father3 {
  c() {
    print("xcccc");
  }

  void say() {
    print("12456465");
  }
}

class Son extends Father with Father2, Father3 {}

void main(List<String> args) {
  var son = new Son();
  son.say();
  son.a();
  son.b();
  son.c();
}
