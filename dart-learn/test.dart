// 这是所有基本类型和语法展示
void main(List<String> args) {
  dynamic abc = "abc";
  final height = 10;
  const pi = 3.14;
  num abcs = 10;
  String name = "abc";
  Object obj = Object();
  List<String> list = ["a", "b", "c"];
  //这是注释
  /*这是注释*/
  ///这是注释
  String abcdc() => "abc";
  abcdc();

  //模板字符串
  // var astr = "hello";
  // var bstr = "world$abcs";
  // var cstr = "hello${abcs}";
  // var dstr = "hello${abcdc()}";
  // print(astr);
  // print(bstr);
  // print(cstr);
  // print(dstr);

  //列表
  var constList = const [1, 2, 3];
  var list1 = [1, 2, 3];
  //map对象
  var map = {"name": "abc", "age": 10};
  var maop = new Map();
  maop["name"] = "abc";
  maop["age"] = 10;
  //不存在则返回null
  add(1, 10);
  print(add(1, 10));
  print(add2(10));
}
num add(int a, int b) {
  return a + b;
}
num add2(int a,{int b=10}) => a + b;
num add3({required int a, required int b}) => a + b;
