void main(List<String> args) {
  var map = {"name": "abc", "age": 10};
  map.forEach((key, value) { // key是键，value是值
    print("$key: $value");
  });
}