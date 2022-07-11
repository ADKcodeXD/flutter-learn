class Logger {
  final String name;
  static final Map<String, Logger> _cache = <String, Logger>{};
  Logger._internal(this.name);

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name] as Logger;
    }else{
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
}

void main(List<String> args) {
  var logger = Logger("abc");
  var logger2 = Logger("abc");
  print(logger == logger2);
}