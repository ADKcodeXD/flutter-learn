import 'package:flutter_movie/common/entity/entity.dart';
import 'package:flutter_movie/common/utils/util.dart';

class UserApi {
  static Future<UserLoginResponseEntity> login({
    required UserLoginRequestEntity requestEntity,
  }) async {
    var response = await HttpUtil().post('/user/login', params: requestEntity);
    return UserLoginResponseEntity.fromJson(response);
  }
}
