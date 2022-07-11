class Person {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address); // 这样写不需要写赋值操作了 他会直接赋值
  //命名构造方法

  void say() {
    print("My name is $name, I am $age years old.");
  }
}

void main(List<String> args) {
  var person = new Person("abc", 10, "abc");
  person.say();
}
