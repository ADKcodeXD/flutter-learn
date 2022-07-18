import 'package:flutter_movie/common/entity/entity.dart';
import 'package:flutter_movie/common/utils/util.dart';

class NewsApi {
  static Future<NewsResponseEntity> getNews({
    required NewsRequestEntity requestEntity,
  }) async {
    var response = await HttpUtil().get('/news', params: requestEntity);
    return NewsResponseEntity.fromJson(response);
  }

  static Future<List<CategoriesResponseEntity>> getCategory() async {
    var response = await HttpUtil().get('/categories');
    return response
        .map<CategoriesResponseEntity>(
            (item) => CategoriesResponseEntity.fromJson(item))
        .toList();
  }
}
