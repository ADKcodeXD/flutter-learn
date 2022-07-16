import 'package:flutter_movie/common/constant/constant.dart';
import 'package:localstorage/localstorage.dart';

class StorageUtil {
  static final StorageUtil _singleton = StorageUtil._internal();
  LocalStorage? _storage;
  //工厂模式的实例化
  factory StorageUtil() => _singleton;
  StorageUtil._internal() {
    _storage = LocalStorage(STORAGE_MASTER_KEY);
  }

  String getItem(String key) {
    return _storage!.getItem(key) ?? '';
  }

  Future<void> setItem(String key, String value) {
    return _storage!.setItem(key, value);
  }
}
