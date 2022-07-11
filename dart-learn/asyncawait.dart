import 'dart:io';

doTask() async {
  var duration = const Duration(seconds: 5);
  await Future.delayed(duration, () {
    print('Task is completed');
  });
  return "ok";
}

test() async {
  var ss = await doTask();
  print(ss);
  return "ok";
}

void main(List<String> args) {
  test();
}
